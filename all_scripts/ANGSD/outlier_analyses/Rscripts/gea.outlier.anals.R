### RDA revisted scripts

#going off of lottia.gea.R to run first RDAs

## first get ancestry
library(lfmm)
library(LEA)

### Get gen data
gen.input <- read.lfmm("by_pop_0.05_pctind0.5.lfmm")

#K=2 Ancestry delineation
object <- snmf(gen.input, K = 2, entropy = T, ploidy = 2, alpha = 100, project = "new", repetitions = 10)
Q2 <-Q(object, K=2, run=which.min(cross.entropy(object, K = 2)))

#K=3 Ancestry delineation
object <- snmf(gen.input, K = 3, entropy = T, ploidy = 2, alpha = 100, project = "new", repetitions = 10)
Q3 <-Q(object, K=3, run=which.min(cross.entropy(object, K = 3)))

### didn't use Q or XYcoords in partial RDAs as they were confounded with env variables

#get allele freq for just outliers (here using those identified by >2 methods)

#input outlier list
lottia_outs <- read.table("NEW.doub.out.list.txt", header=T)

#I editted the ALL_2_rda_geno.txt to give the fist column the title "SNP"
#read this file
setwd("~/Desktop/PD_stuffies/GEAs/RDAs")
lottia_geno_2 <- read.table("ALL_2_geno_snp.txt", header=T)
out_geno<-lottia_geno_2 %>% filter(SNP %in% lottia_outs$outs.final)
FreqOuts <- t(out_geno)

#remove first row (which is snp name)
out_freq<-FreqOuts[2:20,]

#edit matrix to make every row numeric (instead of characters)
library(dplyr)
out_freq <-as.data.frame(out_freq)
out_freq <- out_freq %>% mutate_if(is.character, as.numeric)

#########################
#### RDA on outliers ####


RDA_outs <- rda(out_freq ~ ., data=lottia_env, scale=T)

R.sum <- summary(RDA_outs)
R.sum$cont   # Prints the "Importance of components" table
R.sum$cont$importance[2, "RDA1"]
#  0.510013
R.sum$cont$importance[2, "RDA2"]
# 0.1333064

# Projection SNPs and variables
pdf("outlier.RDA.pdf", width = 4, height = 4)
ggplot() +
  geom_point(aes(x=RDA_outs$CCA$v[,1], y=RDA_outs$CCA$v[,2]), col = "orange", size = 3) +
  geom_segment(aes(xend=RDA_outs$CCA$biplot[,1], yend=RDA_outs$CCA$biplot[,2], x=0, y=0), colour="black", size=0.75, linetype=1, arrow=arrow(length = unit(0.02, "npc"))) +
  geom_text(aes(x=1.2*RDA_outs$CCA$biplot[,1], y=1.2*RDA_outs$CCA$biplot[,2], label = row.names(RDA_outs$CCA$biplot)), size = 3.5) +
  xlab("RDA 1") + ylab("RDA 2") +
  xlim(-1,1) + ylim(-1,1) +
  theme_bw() +
  theme(legend.position="none")
dev.off()


### Map RDA 1 and 2 of outlier model in space
## Spatialisation of the RDA results along the Northern America

#basically need to 
1)turn xy points into raster
2)take values from RDA_outs$CCA$u either column 1 or 2 for each RDA
3)map with ggplot raster

library(raster)
library(ggplot2)
library(rgdal)
library(rgeos)
library(sf)
library(tmap)
library(viridis)

#get background map
setwd("~/Desktop/PD_stuffies/IBD")
NA_shp <-readOGR("NA.line.shp")

#crop map
CA.ext <- extent(-130, -107, 20, 43)
NA_c <- crop(NA_shp, CA.ext)


env.xy.NEW <- read.delim("~/Desktop/PD_stuffies/GEAs/RDAs/env.xy.NEW.txt", comment.char="#")
xy.coords<-env.xy.NEW[,5:6]

#get RDA loadings
RDAs<-RDA_outs$CCA$u

#add to xy coords
RDA.xy<-cbind(xy.coords,RDAs)

RDA.sf <- st_as_sf(RDA.xy, coords = c("Y", "X"), crs = "+proj=longlat +datum=WGS84 +no_defs")

vir.col<-viridis(19)

t.RDA1 <- tm_shape(NA_c) + tm_lines(col="grey") + tm_shape(RDA.sf)+
  tm_dots("RDA1", palette = vir.col, style="cat", size = 0.3)+tm_layout(legend.outside = TRUE)


t.RDA2 <- tm_shape(NA_c) + tm_lines(col="grey") + tm_shape(RDA.sf)+
  tm_dots("RDA2", palette = vir.col, style="cat", size = 0.3)+tm_layout(legend.outside = TRUE)

pdf("RDA1.map.pdf")
t.RDA1
dev.off()

pdf("RDA2.map.pdf")
t.RDA2
dev.off()


################ Delta allelic frequencies
################
hist(apply(out_freq, 2, function(x) max(x)-min(x)))
abline(v=apply(out_freq[, outliers_rdadapt_pop], 2, function(x) max(x)-min(x)))

delta <- apply(FreqData[,-which(colnames(FreqData)%in%outliers_rdadapt_pop)], 2, function(x) max(x)-min(x))
delta_out <- apply(FreqData[, outliers_rdadapt_pop], 2, function(x) max(x)-min(x))
delta_tot <- data.frame(delta = c(delta, delta_out), loci = c(rep("neutral", length(delta)), rep("outliers", length(delta_out))))
pdf("./Delta_Freq.pdf")
ggplot(data=delta_tot) + 
  geom_histogram(aes(x=delta, fill=as.character(loci)), binwidth = 0.1, col='black') +
  stat_bin(aes(x=delta, y=..count.., label=..count.., fill=as.character(loci)), geom="text", binwidth = 0.1, vjust=-.5) +
  scale_fill_manual(values = c("gray83", "orange")) +
  guides(fill=guide_legend(title="Loci")) +
  xlab("Delta allelic frequencies")
dev.off()


################################################
#### PAI and SGV in the sampled populations ####

mean_q <- apply(1-out_freq, 2, mean) #the 2 here means to do it on columns (gives us the mean freq for each SNP)

# Population adaptive index (Bonin et al. 2007) 
PAI <- lapply(1:nrow(out_freq), function(x) sum(abs((1-out_freq[x,])-mean_q), na.rm=T)) 
names(PAI) <- row.names(out_freq)
PAI<-as.data.frame(PAI)

SVG <- lapply(lapply(1:nrow(out_freq), function(x) out_freq[x,]*(1-out_freq[x,])), function(y) mean(unlist(y)))
names(SVG) <- row.names(out_freq)
SVG<-as.data.frame(SVG)

pai.svg<-rbind(PAI,SVG)
write.table(pai.svg, "lottia.OUTS.pai.svg.txt", quote=FALSE, sep=" ", row.names=FALSE)


## Plotting SVG and PAI (NOT USED!!)

TAB <- data.frame(Name = EnvData$Site, Latitude = EnvData$X, Longitude = EnvData$Y, PAI = unlist(PAI), SVG = unlist(SVG))

p_SGV <- ggplot() +
  geom_polygon(data=country, aes(long, lat, group = group), colour = NA, fill = "gray95", size = 0.3) +
  geom_raster(aes(x=mat_dDIST[,1],y=mat_dDIST[,2],fill="gray75"), fill="gray75") +
  #geom_polygon(data=range, aes(long, lat, group = group), colour = NA, fill = "gray75", size = 0.3) +
  geom_polygon(data=country, aes(long, lat, group = group), colour = "gray35", fill = NA, size = 0.3) +
  geom_point(data=TAB, aes(x= Longitude, y= Latitude, size = SVG, colour = PAI)) + 
  scale_color_gradient(low="#FFEDA0", high = "red") +
  xlab("Longitude") + ylab("Latitude") +
  theme_bw() +
  theme(panel.grid.major = element_blank())



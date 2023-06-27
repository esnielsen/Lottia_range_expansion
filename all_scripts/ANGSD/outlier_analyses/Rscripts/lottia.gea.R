####################### Lottia GEAs #######################

#Genotype-environment association tests using WGS data from Lottia gigantea
#
# inspired by this tutorial- https://bookdown.org/hhwagner1/LandGenCourse_book/WE_11.html
#

###########################################################

LIB <- c("rgbif", "ggplot2", "gridExtra", "knitr", "raster", 
         "ade4", "rworldmap", "maptools", "rasterVis", "rgdal","rgeos", "sdmpredictors")
#for(i in LIB) { install.packages(i, repos="http://ftp.sun.ac.za/ftp/pub/mirrors/cran.za.r/") ; library(i, character.only=T) }
for(i in LIB) { library(i, character.only=T) }

library(usdm)
library(psych)    
library(vegan)
library(adegenet)
library(dplyr)
library(fmsb)
library(gsl)
library(raster)
library(sdmpredictors)
library(adegenet)
library(qvalue)
library(tidyverse)

######################## DOWNLOAD PREDICTOR VARIABLES

#download landscape features (using 'contemporary' environmental features ~2000-2015) -- These are from worldclim
#bio1= Annual Mean Temperature
#bio5= Max Temperature of Warmest Month
#bio6= Min Temperature of Coldest Month
#bio7= Air Temperature Range
a.contp <- load_layers( layercodes = c("WC_bio5", "WC_bio6", "WC_bio1", "WC_bio7") , equalarea=FALSE, rasterstack=TRUE)

#download marine features -- These are from Bio-Oracle
o.contp <- load_layers( layercodes = c("BO22_temprange_ss", "BO22_tempmean_ss", "BO22_salinitymean_ss", "BO21_salinityrange_ss", "BO22_ppmean_ss", "BO22_dissoxmean_ss", "BO22_ph", "BO22_cloudmean", "BO22_chlomean_ss", "BO22_curvelmean_ss", "BO22_damean") , equalarea=FALSE, rasterstack=TRUE)

#resample because terrestrial and ocean vars have different resolution/extent
a<-extent(-180, 180, -90, 90) #input layer extent
o<-extent(-180, 180, -90, 90)
#the following makes a matrix with you extents (don't edit)
extent_list<-list(a, o)
extent_list<-lapply(extent_list, as.matrix)
matrix_extent<-matrix(unlist(extent_list), ncol=length(extent_list))
rownames(matrix_extent)<-c("xmin", "ymin", "xmax", "ymax")
best_extent<-extent(min(matrix_extent[1,]), max(matrix_extent[3,]), min(matrix_extent[2,]), max(matrix_extent[4,]))
ranges<-apply(as.matrix(best_extent), 1, diff)
#edit next line if you want new resample resolution
reso<-res(a.contp) #choose layer you want to keep resolution
nrow_ncol<-ranges/reso
#potentially edit next line for new crs parameter (here we keep a.contp)
s2<-raster(best_extent, nrows=nrow_ncol[2], ncols=nrow_ncol[1], crs=a.contp@crs) #choose layer crs you want to keep
a.c.r.2 <-resample(a.contp, s2, method="ngb") #resample by s2
o.c.r.2 <-resample(o.contp, s2, method="ngb") #resample by s2
contemp.r.2=stack(a.c.r.2, o.c.r.2) #stack resampled layers

#Crop layers to West Coast extent
WC.ext <- extent(-130, -107, 20, 50)
env.curr.c <- crop(contemp.r.2, WC.ext)

# Load sample site lat longs
lat_longs <- read_excel("lat.longs.xlsx", col_types = c("text", "numeric", "numeric"))

# Extract env values for our sample locations:
envdata <- raster::extract(x=env.curr.c, y=cbind(lat_longs$x, lat_longs$y))
data<- cbind2 (x=lat_longs, y=envdata)

#Extract when there's NAs (happens when coastal sample sites fall slightly out of marine/terrestrial layers)
env.curr.c <- stack(env.curr.c)
sample_raster_NA <- function(r, xy){
  apply(X = xy, MARGIN = 1, 
        FUN = function(xy) r@data@values[which.min(replace(distanceFromPoints(r, xy), is.na(r), NA))])
  
}
test<-lapply(env.curr.c@layers, function(a_layer) sample_raster_NA(a_layer, cbind(lat_longs$x, lat_longs$y)))
envdat.whole <-as.data.frame(do.call(cbind, test))
#combine env data with lat long data
data<- cbind2 (x=lat_longs, y=envdat.whole)

# do correlation analyses of env data
pairs.panels(envdata, scale=T)

#get variance inflation factors (VIF<5 is good)
vif(env.curr.c)

#subset variables and re-run vifs
VARSEL <- c("BO22_damean", "BO22_tempmean_ss", "BO22_ph")
contemp.mar.3vars <- stack(subset(env.curr.c, VARSEL))
vif(contemp.mar.3vars)

#Variables      VIF
#1      BO22_damean 1.513805
#2 BO22_tempmean_ss 2.241261
#3          BO22_ph 2.456132

# re-create env data after filtering those that are correlated
test<-lapply(contemp.mar.3vars@layers, function(a_layer) sample_raster_NA(a_layer, cbind(lat_longs$x, lat_longs$y)))
envdat.3 <-as.data.frame(do.call(cbind, test))
colnames(envdat.3) <- c("BO22_damean","BO22_tempmean_ss","BO22_ph")

# write raster data and env data table 
writeRaster(contemp.mar.3vars, "GEA.env.3vars.tif", format="GTiff", overwrite=TRUE)
write.table(envdat.3, "GEA.env.per.site.txt")


######################## GET K WITH sNMF 
######################## For LFMM Analysis

library(LEA)
library(ggplot2)

#input gen data -- this is from extract_format_maf_pruned.r script
gen.input <- read.lfmm("by_pop_0.05_pctind0.5.lfmm")

#Trying K clusters 1-10, and running 10 iterations per K
obj.snmf = snmf(gen.input, K = 1:10, project = "new", repetitions = 10, tolerance = 0.00001, entropy=TRUE, ploidy = 2)

# plot cross-entropy criterion of all runs of the project
# here you choose K which has the lowest value 
plot(obj.snmf, cex = 1.2, col = "lightblue", pch = 19)

# get the cross-entropy value for each run at K = 2 (try for other Ks)
ce2 <- cross.entropy(obj.snmf, K= 2)
ce2

# select the run with the lowest cross-entropy value for K = ?
best <- which.min(ce) # the best run is #1 at k=3
best

#get q matrix for structure type plot
qmatrix = Q(obj.snmf, K = 2, run = best) 
qmatrix

#use same R code to plot as admixture analysis

######################## RUN GEA WITH LFMM

library(lfmm)

### Get gen data
gen.input <- read.lfmm("by_pop_0.05_pctind0.5.lfmm")

#check number of samples and snps with dimensions
dim(gen.input)
#     19 703925

#check for missing genotypes
sum(is.na(gen.input))

### Get env data
lfmm.env <- read.table("GEA.env.per.site.NEW.txt", header=TRUE)

str(lfmm.env) 

env.1 <-(lfmm.env[,1]) #damean

#run lfmm
lottia.lfmm <- lfmm_ridge(gen.input, lfmm.env, K=3) ## change K as you see fit

#calculate test statistics for the predictors
lottia.pv <- lfmm_test(Y=gen.input, X=lfmm.env, lfmm=lottia.lfmm, calibrate="gif")

# this object includes raw z-scores and p-values, as well as GIF-calibrated scores and p-values
names(lottia.pv)

# Let’s look at the genomic inflation factor (GIF)
# An appropriately calibrated set of tests will have a GIF of around 1
lottia.pv$gif

#DA      SST       PH 
#1.210660 1.414407 1.718403 

#NOTE: Changing the value of K influences the GIF, so additional tests using the “best” value of K +/- 1 may be needed in some cases. See Francois et al. (2016) for more details.

# plot unadjusted & adjusted p-values
# you want to see a relatively flat histogram (most loci not under selection) 
# with a peak near zero, indicating candidate adaptive markers

hist(lottia.pv$pvalue[,1], main="Unadjusted p-values")        
hist(lottia.pv$calibrated.pvalue[,1], main="GIF-adjusted p-values")

# Let's change the GIF and readjust the p-values:
zscore <- lottia.pv$score[,1]   # zscores for first predictor
(gif <- lottia.pv$gif[1])       ## d.fault GIF for the first predictor


DA.gif <- 1.1 #choose gif as you see fit
SST.gif <-1.2
pH.gif <-1.5

# Manual adjustment of the p-values:
adj.pv1 <- pchisq(zscore^2/DA.gif, df=1, lower = FALSE) # CHANGE to that env's gif

#plot manually adj p-values
hist(adj.pv1, main="REadjusted p-values (GIF=1.0)") #this gives us a better peak at 0,
                                                    #meaning not too conservative

#lottia.pv.adj <- cbind2 (x=lottia.pv, y=adj.pv1)

#convert the adjusted p-values to q-values

#with lfmm chosen GIF
lottia.qv <- qvalue(lottia.pv$calibrated.pvalue)$qvalues

#with our manually adjusted GIF
lottia.qv <- qvalue(adj.pv1)$qvalues

lottia.qv.df <-as.data.frame(lottia.qv)

length(which(lottia.qv < 0.05)) ## how many SNPs have an FDR < 5%?

lottia.FDR.DA <- colnames(gen.input)[which(lottia.qv < 0.05)] ## identify which SNPs these are

lottia.DA <-as.data.frame(lottia.FDR.DA)

# re-do with adjsted p-vals for each env variable
# (basically re-run p-val script with df=env var number)

write.table(lottia.DA, "lfmm.da.outs.NEW.txt", quote=FALSE, sep=" ", row.names=FALSE)
write.table(lottia.SST, "lfmm.sst.outs.NEW.txt", quote=FALSE, sep=" ", row.names=FALSE)
write.table(lottia.PH, "lfmm.ph.outs.NEW.txt", quote=FALSE, sep=" ", row.names=FALSE)

#combine outliers across env vars
colnames(my_dataframe)[2] = "outliers"

#run lfmm older version
sites_environ_matrix<-as.matrix(env.input[,-c(1:5)])
write.env(sites_environ_matrix, "sites_environ_matrix.env")

test_lfmm <- lfmm("pruned.lfmm", "sites_environ_matrix.env", K=2, rep=1, project = "new")



######################## RUN GEA WITH RDA
library(vegan)

# read geno file (this is output from extract_format_maf_pruned.r -- I renamed this from .maf.rda to .geno.txt)
lottia_geno <- read.table("ALL_2.rda.geno.txt", header=TRUE)
dim(lottia_geno)
#[1] 703925     19

lottia_freq<-t(lottia_geno)
lottia_env <- read.table("GEA.env.per.site.NEW.txt", header=TRUE)

#Run the RDA
lottia.rda <- rda(lottia_freq ~ ., data=lottia_env, scale=T)

#Look at R2, or variance explained. i.e. a adjusted R^2 of 0.0002 
# means that our constrained ordination explains about 0.02% of the variation.
RsquareAdj(lottia.rda)

#$r.squared
#[1] 0.1991065

#$adj.r.squared
#[1] 0.03892779

#on adjusted R2: Our constrained ordination explains about 4% of the variation; this low explanatory power is not surprising given that we expect that most of the SNPs in our dataset will not show a relationship with the environmental predictors (e.g., most SNPs will be neutral)


# test for sign. environ. variables
anova(lottia.rda, by="terms", permu=200) # test sign of env variables
anova(lottia.rda, by="axis", perm.max=500) # test axes for significance
anova(lottia.rda, perm=999) 

# observe the eigenvalues for the constrained axes
# reflect the variance explained by each canonical axis

summary(eigenvals(lottia.rda, model = "constrained"))
screeplot(lottia.rda)

#check collinearity 
vif.cca(lottia.rda)
# WC_bio6 MS_biogeo08_sss_mean_5m MS_biogeo13_sst_mean_5m  
# 14.434383                5.753994               22.360542 ### probs need to remove one

#plot RDA SNP are red at the cener of the plot
#population are black #vector are env predictorss
pdf("lottia.rda12.pdf")
plot(lottia.rda, scaling=3)
text(lottia.rda, display="sites", col=1, scaling=3)
dev.off()

pdf("lottia.rda13.pdf")
plot(lottia.rda, choices=c(1,3), scaling=3)#axis 1 and 3
text(lottia.rda, display="sites", col=1, scaling=3)
dev.off()


#### Plotting RDA colored by pops

library(cowplot)
scrs <- scores(lottia.rda, display = c("species", "sites", "bp"), choices = 1:3, scaling = 2)
scrs

species_centroids <- data.frame(scrs$species)
species_centroids

species_centroids$PC_names <- rownames(species_centroids)

aem_continuous_arrows <- data.frame(scrs$biplot)
aem_continuous_arrows

rownames(aem_continuous_arrows) <- c("DA","SST","PH")

aem_continuous_arrows$aem_number <- rownames(aem_continuous_arrows)
aem_continuous_arrows

baseplot<-plot(lottia.rda, scaling = 2)

mult <- attributes(baseplot$biplot)$arrow.mul

sitenames <- c("KR", "FR", "BB", "DB", "HP", "CR", "SB", "VN", "GP", "CA", "WA", "IP", "SH", "SC", "CB", "PB", "SR", "BT", "BA")

sitecols <- c("#436EEE", "#6959CD","#009ACD","#B9D3EE","#40E0D0","#458B00","#66CD00", "#00FF00","#8B7500","#FFFF00", "#FFD700","#EE7600", "#CD3700", "#FF1493","#FF83FA", "#8B1C62", "#CD6090", "#9F79EE", "#68228B")

#sitereg <- c(rep("S", 11), rep("N", 8))

sites_centroids <- data.frame(scrs$sites)
sites_centroids$SITE <- sitenames
sites_centroids$SITE <-factor(sites_centroids$SITE, levels=c("KR", "FR", "BB", "DB", "HP", "CR", "SB", "VN", "GP", "CA", "WA", "IP", "SH", "SC", "CB", "PB", "SR", "BT", "BA"))
#sites_centroids$REGION <- as.factor(sitereg)
head(sites_centroids)

RDA_plot <- ggplot(data = sites_centroids, aes(x = RDA1, y = RDA2))+
  geom_point(data = sites_centroids, pch = 21, size = 4.5, aes(fill = SITE))+
  scale_fill_manual(values = sitecols)+
  geom_text(data = aem_continuous_arrows,
            aes(x= (mult + mult/10) * RDA1, y = (mult + mult/10) * RDA2,
                label = aem_number), size = 4, hjust = 0.5)+
  #geom_text(data = sites_centroids, aes(x = RDA1, y = RDA2, label = SITE), 
   #         size = 3, col = "black", hjust = 1.4)+
  geom_segment(data = aem_continuous_arrows,
               aes(x = 0, xend = mult * RDA1, y = 0, yend = mult * RDA2),
               arrow = arrow(length = unit(0.25, "cm")), colour = "grey") +
  theme_bw() + 
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank()) +
  geom_hline(yintercept = 0, lty = "dotted") + geom_vline(xintercept = 0, lty = "dotted") +
  labs(x = paste("RDA1 (", round(summary(lottia.rda)$cont$importance[2,1]*100, 2), "%)", sep = ""), y = paste("RDA2 (", round(summary(lottia.rda)$cont$importance[2,2]*100, 2), "%)", sep = ""))+
  theme(axis.text = element_text(colour = "black", size = 12)) +
  theme(axis.title = element_text(size = 12, colour = "black", family = "Helvetica", face = "bold")) 

RDA_plot

pdf("ALL.snps.RDA.col.plot.pdf")
RDA_plot
dev.off()

###### Now we identify candidates using the first 3 loadings of RDA
######

#get first 3 loadings (stored as species in the RDA object)
load.rda <- summary(lottia.rda)$species[,1:3]

#look at dist (should be close to normally dist) - those on tails likely candidates
hist(load.rda[,1], main="Loadings on RDA1")
hist(load.rda[,2], main="Loadings on RDA2")
hist(load.rda[,3], main="Loadings on RDA3") 

outliers <- function(x,z){
  lims <- mean(x) + c(-1, 1) * z * sd(x) ## f.nd loadings +/- z SD from mean loading     
  x[x < lims[1] | x > lims[2]]           # locus names in these tails
}

cand1 <- outliers(load.rda[,1], 3) #3 for 3 std dev 
cand2 <- outliers(load.rda[,2], 3) 
cand3 <- outliers(load.rda[,3], 3) 

ncand<-length(cand1) + length ( cand2) + length ( cand3)

#lottia.rda.cand <- c(names(cand1), names(cand2), names(cand3)) ## gives the names of the candidates

#Next, we'll organize our results by making one data frame with the axis, SNP name, loading, & correlation with each predictor:
cand1.df <- cbind.data.frame(rep(1, times = length(cand1)), names(cand1), unname(cand1)); colnames(cand1.df) <- c("axis", "snp", "loading")
cand2.df <- cbind.data.frame(rep(2, times = length(cand2)), names(cand2), unname(cand2)); colnames(cand2.df) <- c("axis", "snp", "loading")
cand3.df <- cbind.data.frame(rep(3, times = length(cand3)), names(cand3), unname(cand3)); colnames(cand3.df) <- c("axis", "snp", "loading")

cand <- rbind(cand1.df, cand2.df, cand3.df)
cand$snp <- as.character(cand$snp)

cand.mat <- matrix(nrow=(ncand), ncol=3)  # ncol = number of predictors
colnames(cand.mat) <- c("DA", "SST", "pH")
                        
#Let's add in the correlations of each candidate SNP with the  environmental predictors:
n<-dim(lottia_env)[2]
foo <- matrix(nrow=ncand, ncol=3)  # ncol= number of env predictors
colnames(foo) <- colnames(lottia_env)

for (i in 1:length(cand$snp)) {
  nam <- cand[i,2]
  snp.gen <- lottia_freq[,nam]
  foo[i,] <- apply(lottia_env,2,function(x) cor(x,snp.gen))
}

#table of candidate snp with loading on each axis and correlation with env predictors
cand <- cbind.data.frame(cand,foo)  
head(cand)

#investigate the candidates
#are there snp associated with several axis? if yes remove them
n_dupli<-length(cand$snp[duplicated(cand$snp)])
n_dupli
if (n_dupli>=1){cand<-cand[!duplicated(cand$snp)]}

#Next, we'll see which of the predictors each candidate SNP is most strongly correlated with:
n<-dim(cand)[2]
for (i in 1:length(cand$snp)) {
  bar <- cand[i,]
  cand[i,n+1] <- names(which.max(abs(bar[4:n]))) # gives the variable
  cand[i,n+2] <- max(abs(bar[4:n]))              # gives the correlation
}

colnames(cand)[n+1] <- "predictor"
colnames(cand)[n+2] <- "correlation"
head(cand)
table(cand$predictor) 
write.table(cand, "lottia.rda.env.outs.txt", quote=FALSE, sep=" ", row.names=FALSE)

#Let's look at RDA plots again, but this time focus in on the SNPs in the ordination space. 
#We'll color code the SNPs based on the predictor variable that they are most strongly correlated with. 

sel <- cand$snp
env <- cand$predictor
variables<-levels(as.factor(cand$predictor))
for (i in 1: length(variables))
{env[env==variables[i]] <- i} #associates a color with each env predictor

# color by predictor:
col.pred <- rownames(lottia.rda$CCA$v) # pull the SNP names and put them in a vector of colour

for (i in 1:length(sel)) {           # 
  foo <- match(sel[i],col.pred)
  col.pred[foo] <- env[i]
}

#below I had to edit the grep to reflect the SNP ids (with chrom name)
col.pred[grep("LOTGIsca",col.pred)] <- '#f1eef6' # non-candidate SNPs make them transparent
empty <- col.pred
empty[grep("#f1eef6",empty)] <- rgb(0,1,0, alpha=0) # transparent
empty.outline <- ifelse(empty=="#00FF0000","#00FF0000","gray32")
bg <- c(1: length(variables))

# axes 1 & 2
pdf("lottia.rda.1_2.pdf")
plot(lottia.rda, type="n", scaling=1, xlim=c(-1,1), ylim=c(-1,1))
points(lottia.rda, display="species", pch=21, cex=1, col="gray32", bg=col.pred, scaling=1)
points(lottia.rda, display="species", pch=21, cex=1, col=empty.outline, bg=empty, scaling=1)
text(lottia.rda, scaling=3, display="bp", col="#0868ac", cex=1)
legend("bottomleft", legend=variables, bty="n", col="gray32", pch=21, cex=1, pt.bg=bg)
dev.off()


pdf("lottia.rda.1_2.pdf")
plot(lottia.rda, type="n", scaling=3, xlim=c(-1,1), ylim=c(-1,1))
points(lottia.rda, display="species", pch=21, cex=1.5, col="gray32", bg=col.pred, scaling=3)
points(lottia.rda, display="species", pch=21, cex=1.5, col=empty.outline, bg=empty, scaling=3)
text(lottia.rda, scaling=3, display="sites", col="black", cex=1.5)
text(lottia.rda, scaling=3, display="bp", col="#0868ac", cex=1.5)
legend("bottomleft", legend=c("DA","SST","pH"), bty="n", col="gray32", pch=21, cex=1.5, pt.bg=bg)
dev.off()

# axes 1 & 3
pdf("lottia.rda.1_3.pdf")
plot(lottia.rda, type="n", scaling=3, xlim=c(-1,1), ylim=c(-1,1), choices=c(1,3))
points(lottia.rda, display="species", pch=21, cex=1.5, col="gray32", bg=col.pred, scaling=3, choices=c(1,3))
points(lottia.rda, display="species", pch=21, cex=1.5, col=empty.outline, bg=empty, scaling=3, choices=c(1,3))
text(lottia.rda, scaling=3, display="sites", col="black", cex=1.5)
text(lottia.rda, scaling=3, display="bp", col="#0868ac", cex=1.5)
legend("bottomleft", legend=c("DA","SST","pH"), bty="n", col="gray32", pch=21, cex=1.5, pt.bg=bg)
dev.off()


#check environmental predictors are most strongly correlated with the first three RDA axes
intersetcor(lottia.rda)[,1:3]


######################## COMPARE LFMM & RDA

intersect(lottia.FDR.1, lottia.rda.cand) ## f.und by both LFMM and RDA

setdiff(lottia.FDR.1, lottia.rda.cand)   # unique to LFMM



#### Now testing using ancestry as an additional predictor in RDAs 
#### 

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


#########################
#### RDA on outliers ####

#get allele freq for just outliers (here using those identified by >2 methods)

#input outlier list
lottia_outs <- read.table("NEW.doub.out.list.txt", header=T)

#I edited the ALL_2_rda_geno.txt to give the fist column the title "SNP"
#read this file
library(dplyr)
lottia_geno_2 <- read.table("ALL_2_geno_snp.txt", header=T)
out_geno<-lottia_geno_2 %>% filter(SNP %in% lottia_outs$outs.final)
FreqOuts <- t(out_geno)

#remove first row (which is snp name)
out_freq<-FreqOuts[2:20,]

#edit matrix to make every row numeric (instead of characters)
out_freq <-as.data.frame(out_freq)
out_freq <- out_freq %>% mutate_if(is.character, as.numeric)

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


### make outlier RDA map colored by pop
scrs <- scores(RDA_outs, display = c("species", "sites", "bp"), choices = 1:3, scaling = 2)
scrs

species_centroids <- data.frame(scrs$species)
species_centroids

species_centroids$PC_names <- rownames(species_centroids)

aem_continuous_arrows <- data.frame(scrs$biplot)
aem_continuous_arrows

rownames(aem_continuous_arrows) <- c("DA","SST","PH")

aem_continuous_arrows$aem_number <- rownames(aem_continuous_arrows)
aem_continuous_arrows

baseplot<-plot(RDA_outs, scaling = 2)

mult <- attributes(baseplot$biplot)$arrow.mul

sitenames <- c("KR", "FR", "BB", "DB", "HP", "CR", "SB", "VN", "GP", "CA", "WA", "IP", "SH", "SC", "CB", "PB", "SR", "BT", "BA")

sitecols <- c("#436EEE", "#6959CD","#009ACD","#B9D3EE","#40E0D0","#458B00","#66CD00", "#00FF00","#8B7500","#FFFF00", "#FFD700","#EE7600", "#CD3700", "#FF1493","#FF83FA", "#8B1C62", "#CD6090", "#9F79EE", "#68228B")

#sitereg <- c(rep("S", 11), rep("N", 8))

sites_centroids <- data.frame(scrs$sites)
sites_centroids$SITE <- sitenames
sites_centroids$SITE <-factor(sites_centroids$SITE, levels=c("KR", "FR", "BB", "DB", "HP", "CR", "SB", "VN", "GP", "CA", "WA", "IP", "SH", "SC", "CB", "PB", "SR", "BT", "BA"))
#sites_centroids$REGION <- as.factor(sitereg)
head(sites_centroids)

RDA_outs_plot <- ggplot(data = sites_centroids, aes(x = RDA1, y = RDA2))+
  geom_point(data = sites_centroids, pch = 21, size = 4.5, aes(fill = SITE))+
  scale_fill_manual(values = sitecols)+
  geom_text(data = aem_continuous_arrows,
            aes(x= (mult + mult/10) * RDA1, y = (mult + mult/10) * RDA2,
                label = aem_number), size = 4, hjust = 0.5)+
  #geom_text(data = sites_centroids, aes(x = RDA1, y = RDA2, label = SITE), 
           # size = 3, col = "black", hjust = 1.6)+
  geom_segment(data = aem_continuous_arrows,
               aes(x = 0, xend = mult * RDA1, y = 0, yend = mult * RDA2),
               arrow = arrow(length = unit(0.25, "cm")), colour = "grey") +
  theme_bw() + 
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank()) +
  geom_hline(yintercept = 0, lty = "dotted") + geom_vline(xintercept = 0, lty = "dotted") +
  labs(x = paste("RDA1 (", round(summary(RDA_outs)$cont$importance[2,1]*100, 2), "%)", sep = ""), y = paste("RDA2 (", round(summary(RDA_outs)$cont$importance[2,2]*100, 2), "%)", sep = ""))+
  theme(axis.text = element_text(colour = "black", size = 12)) +
  theme(axis.title = element_text(size = 12, colour = "black", family = "Helvetica", face = "bold")) 

RDA_outs_plot

pdf("OUTS.snps.RDA.col.plot.pdf")
RDA_outs_plot
dev.off()

RDA_outs_plot <- ggplot(data = sites_centroids, aes(x = RDA1, y = RDA2))+
  geom_point(data = sites_centroids, pch = 21, size = 2, aes(fill = SITE))+
  scale_fill_manual(values = sitecols)+
  geom_text(data = aem_continuous_arrows,
            aes(x= (mult + mult/10) * RDA2, y = (mult + mult/10) * RDA3,
                label = aem_number), size = 4, hjust = 0.5)+
  geom_text(data = sites_centroids, aes(x = RDA2, y = RDA3, label = SITE), 
            size = 3, col = "black", hjust = 1.4)+
  geom_segment(data = aem_continuous_arrows,
               aes(x = 0, xend = mult * RDA2, y = 0, yend = mult * RDA3),
               arrow = arrow(length = unit(0.25, "cm")), colour = "grey") +
  theme_bw() + 
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank()) +
  geom_hline(yintercept = 0, lty = "dotted") + geom_vline(xintercept = 0, lty = "dotted") +
  labs(x = paste("RDA2 (", round(summary(RDA_outs)$cont$importance[2,2]*100, 2), "%)", sep = ""), y = paste("RDA3 (", round(summary(RDA_outs)$cont$importance[2,3]*100, 2), "%)", sep = ""))+
  theme(axis.text = element_text(colour = "black", size = 12)) +
  theme(axis.title = element_text(size = 12, colour = "black", family = "Helvetica", face = "bold"))

pdf("OUTS.snps.RDA.2.3.col.plot.pdf")
RDA_outs_plot
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


################ Delta allelic frequencies (NOT USED)
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

# Standing genomic variation based on outliers per site
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




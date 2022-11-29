#################### R script to calculate and plot per pop He #######################

#taken from https://github.com/sbarfield/Yap_Ahyacinthus/heterozygosity_beagle.R

setwd("~//ocean/projects/deb200006p/enielsen/LGwork/angsd/03_saf_maf_gl_all")

glf <- read.table(file = 'ALL_CA_maf0.05_pctind0.5_maxdepth15.beagle.gz', header=TRUE)[,-c(1:3)]
glf <- array(c(t(as.matrix(glf))), c(3, ncol(glf)/3, nrow(glf)))
EMstep <- function (sfs, GL) rowMeans(prop.table(sfs * GL, 2))

SFS <- matrix(1/3,3,dim(glf)[2])

maxiter <- 200
tol <- 1e-8

for(sample in 1:dim(glf)[2])
{
  for (iter in 1:maxiter)
  {
    upd <- EMstep (SFS[,sample], glf[,sample,])
    if (sqrt(sum((upd - SFS[,sample])^2)) < tol)
      break;
    SFS[,sample] <- upd
  }
  if (iter == maxiter) warning("increase maximum number of iterations")
}



#populations with their respective columns of the SFS
print(c('KR',round(summary(SFS[2,1:30]),4)),quote=F)
print(c('FR',round(summary(SFS[2,31:60]),4)),quote=F)
print(c('BB',round(summary(SFS[2,61:90]),4)),quote=F)
print(c('DB',round(summary(SFS[2,91:120]),4)),quote=F)
print(c('HP',round(summary(SFS[2,121:150]),4)),quote=F)
print(c('CR',round(summary(SFS[2,151:180]),4)),quote=F)
print(c('SB',round(summary(SFS[2,181:209]),4)),quote=F)
print(c('VN',round(summary(SFS[2,210:239]),4)),quote=F)
print(c('GP',round(summary(SFS[2,240:269]),4)),quote=F)
print(c('CA',round(summary(SFS[2,270:299]),4)),quote=F)
print(c('WA',round(summary(SFS[2,300:329]),4)),quote=F)
print(c('IP',round(summary(SFS[2,330:359]),4)),quote=F)
print(c('SH',round(summary(SFS[2,360:389]),4)),quote=F)
print(c('SC',round(summary(SFS[2,390:419]),4)),quote=F)
print(c('CB',round(summary(SFS[2,420:449]),4)),quote=F)

#
sfs=SFS[2,1:30]
Site=replicate(30, "KR")
KR=data.frame(sfs, Site)

sfs=SFS[2,31:60]
Site=replicate(30, "FR")
FR=data.frame(sfs, Site)

Site=replicate(30, "DB")
sfs=SFS[2,61:90]
DB=data.frame(sfs, Site)

sfs=SFS[2,91:120]
Site=replicate(30, "BB")
KR=data.frame(sfs, Site)

sfs=SFS[2,121:150]
Site=replicate(30, "HP")
FR=data.frame(sfs, Site)

Site=replicate(30, "CR")
sfs=SFS[2,151:180]
DB=data.frame(sfs, Site)

sfs=SFS[2,181:209]
Site=replicate(30, "SB")
KR=data.frame(sfs, Site)

sfs=SFS[2,210:239]
Site=replicate(30, "VN")
FR=data.frame(sfs, Site)

Site=replicate(30, "GP")
sfs=SFS[2,240:269]
DB=data.frame(sfs, Site)

sfs=SFS[2,270:299]
Site=replicate(30, "CA")
KR=data.frame(sfs, Site)

sfs=SFS[2,300:329]
Site=replicate(30, "WA")
FR=data.frame(sfs, Site)

Site=replicate(30, "IP")
sfs=SFS[2,330:359]
DB=data.frame(sfs, Site)

sfs=SFS[2,360:389]
Site=replicate(30, "SH")
KR=data.frame(sfs, Site)

sfs=SFS[2,390:419]
Site=replicate(30, "SC")
FR=data.frame(sfs, Site)

Site=replicate(30, "CB")
sfs=SFS[2,420:449]
DB=data.frame(sfs, Site)


All=rbind(KR,FR,BB,DB,HP,CR,SB,VN,GP,CA,WA,IP,SH,SC,CB, PB, SR,BT,BA)
write.table(ALL, 'pop.het.txt')

##Plotting outputs from pop.het.sh

library(ggplot2)
pop.het <- read.delim("pop.het.txt")

# Basic violin plot
pop.het$Site=factor(pop.het$Site, levels=c("KR","FR","BB","DB","HP","CR","SB","VN", "GP","CA","WA", "IP","SH","SC", "CB", "PB", "SR", "BT","BA"))

ALL.cols=c("#436EEE", "#6959CD","#009ACD","#B9D3EE","#40E0D0","#458B00","#66CD00", "#00FF00","#EEEE00","#FFFF00", "#FFD700","#FFA500", "#CD3700", "#FF1493","#FF83FA", "#8B1C62", "#CD6090", "#9F79EE", "#68228B")  

data_summary <- function(x) {
  m <- mean(x)
  ymin <- m-sd(x)
  ymax <- m+sd(x)
  return(c(y=m,ymin=ymin,ymax=ymax))
}

p <- ggplot(pop.het, aes(x=Site, y=sfs,fill=Site)) + 
  geom_violin()+
  scale_fill_manual(values=ALL.cols)+
  theme_bw(base_size = 22)+
  ylab(label = "Expected Het")+xlab(label="")+
  theme(axis.text.x = element_text(angle = 45, vjust = , hjust=1))
p+stat_summary(fun=mean,size=2, 
               geom="point", color="black")

t.test(KR$sfs,FR$sfs)

#### Plotting pairwise comparisons per protection level

#editted the pop.het.txt to only have He per pops that we are comparing, saved as 'he.mpas.xlsx'

he_mpas <- read_excel("he.mpas.xlsx", col_types = c("numeric", 
                                                 "text", "text", "text"))

pair.cols=c("#FF83FA", "#FF1493", "#CD3700", "#FFA500", "#FFFF00", "#EEEE00", "#458B00", "#40E0D0","#B9D3EE", "#009ACD", "#6959CD", "#436EEE")
col.rev <- rev(pair.cols)
he_mpas$Site <- factor(he_mpas$Site , levels=c("KR", "FR", "BB", "DB", "HP", "CR",  "GP", "CA", "IP", "SH", "SC", "CB"), ordered = TRUE)
he_mpas$Comparison <- factor(he_mpas$Comparison , levels=c("KR~FR", "BB~DB", "HP~CR",  "GP~CA", "IP~SH", "SC~CB"), ordered = TRUE)

# first save the plot in variable
myplot <- ggplot(he_mpas, aes(x=Harvested, y=sfs)) + 
  geom_boxplot(aes(fill=Site), values =col.rev) +
  scale_fill_manual(values=col.rev) +
  facet_grid(~Comparison) +
  geom_signif(test="wilcox.test", comparisons = list(c("N", "Y")), map_signif_level = F)
# a plot with all significance layer per facet group. 
myplot

### Finding overlap for CA N vs. C snps

library(dplyr)


setwd("~/Desktop/PD_stuffies/R_work/CA.n.c.outs")

# To combine the PBS and BayPass outliers
setwd("~/Desktop/PD_stuffies/R_work/PBS")
CA.n.c.pbs=read.table("CA.n.c.pbs1.99.txt", header=T)

setwd("~/Desktop/PD_stuffies/GEAs/baypass")
CA.n.c.BP=read.table("CA.n.c.C2.outliers.txt", header=T)

CA.n.c.BP.PBS <- merge(CA.n.c.pbs, CA.n.c.BP, by=c("Chromo","Position"))
#360 overlap between these two
write.table(CA.n.c.BP.PBS, "CA.n.c.BP.PBS.out.list.txt", row.names=FALSE, sep="\t", quote = FALSE)


#see if any of these SNPs overlap with bottom 1% pvals of pFST
setwd("~/Desktop/PD_stuffies/R_work/pFST")
CA.n.c.pFST=read.table("CA.n.c.pfst.99.txt", header=T)

CA.n.c.BP.PBS.PFST <- merge(CA.n.c, CA.n.c.pFST, by=c("Chromo","Position"))
#theres 12 snps with overall overlap
write.table(CA.n.c.BP.PBS.PFST, "CA.n.c.BP.PBS.PFST.out.list.txt", row.names=FALSE, sep="\t", quote = FALSE)

CA.n.c.BP.PFST <- merge(CA.n.c.BP, CA.n.c.pFST, by=c("Chromo","Position"))
#12 snps

CA.n.c.PBS.PFST <- merge(CA.n.c.pbs, CA.n.c.pFST, by=c("Chromo","Position"))
#415 snps


#see if any of these SNPs overlap with GEA outliers
GEA.outs <- read.table("NEW.doub.out.list.txt", header=T)

CA.n.c.outs <- read.table("CA.n.c.full.out.list.txt", header=T)
#118 SNPs overlap

#subset CA.n.c.outs by GEA.outs
CA.n.c.outs.overlap <- subset(CA.n.c.outs, snp %in% GEA.outs$snp)


#are these snps also in pFST list?
CA.n.c.3 <- read.table("CA.n.c.3mods.out.list.txt", header=T)
CA.n.c.outs.overlap.3 <- subset(CA.n.c.outs.overlap, snp %in% CA.n.c.3$snp)
#8 snps overlap


### create CA.n.c sites txt
#import sites list (from angsd, which was edited to be one column with chrom_pos)
sites <- read.table("sites_ALL_2_maf0.05_pctind0.5_maxdepth15_R2.pruned", header = F)

#keep only sites from out list
sites.CA.n.c.360 <- sites[(sites$V1 %in% CA.n.c.outs$snp),]

sites.CA.n.c.12 <- sites[(sites$V1 %in% CA.n.c.3$snp),]

write.table(sites.CA.n.c.360, "sites_ALL_2_R2.pruned.CA.n.c.360.txt", quote=FALSE, sep=" ", row.names=FALSE)

write.table(sites.CA.n.c.12, "sites_ALL_2_R2.pruned.CA.n.c.12.txt", quote=FALSE, sep=" ", row.names=FALSE)


############ Running RDA on CA.n.c outs!
############

#read orig RDA geno input
setwd("~/Desktop/PD_stuffies/GEAs/RDAs")
lottia_geno_2 <- read.table("ALL_2_geno_snp.txt", header=T)

#read outs list
setwd("~/Desktop/PD_stuffies/R_work/CA.n.c.outs")
CA.n.c.list <- read.table("CA.n.c.360.list.txt", header=TRUE)

#filter to get only outs geno
out_geno<-lottia_geno_2 %>% filter(SNP %in% CA.n.c.list$snp)
FreqOuts <- t(out_geno)

lottia_env <- read.table("env.xy.NEW.txt", header=TRUE)
#lottia_env <- read.table("GEA.env.per.site.txt", header=TRUE)
lottia_env <- lottia_env[,2:4]

## now follow scripts in 'gea.outlier.anals.R"


################ 
# Get overlap between CA_n vs. CA_c snps & GEA 
################ 

#read GRRF snp list
setwd("~/Desktop/PD_stuffies/R_work/GRRF")
grrf_snps <- read.table("grrf_course_snp_labels.txt", header=F)

#read CAnc snp list
setwd("~/Desktop/PD_stuffies/R_work/CA.n.c.outs")
CAnc_snps <- read.table("CA.n.c.360.list.txt", header=T)

grrf_CAnc_overlap <-CAnc_snps %>% filter(snp %in% grrf_snps$V1)
#only 1 snp is overlap!! (out of the 360, this is also one of the 12 snps)
# 	LOTGIsca_105_664629


################
# Make maf X lat plots
################

# read all pop maf files
mafs<- list.files(path=".", pattern=".mafs.txt", all.files=TRUE,
           full.names=TRUE)
ldf <- lapply(mafs, read.table, header=T)

MAF_data<-data.frame()
for(i in 1:length(ldf)){
  dt<- ldf[[i]]
  if (i==1) {
    MAF_data <- dt
    next()}
  MAF_data<-merge(MAF_data,dt,by = "chromo",all= TRUE)
  
}

write.table(MAF_data, "12.snp.SM.mafs.txt", quote=FALSE, sep=" ", row.names=FALSE)


#edit in excel, read in new table
X12_SM_mafs <- read_excel("12.SM.mafs.xlsx", sheet = "Sheet2", col_types = c("text", "numeric", "text"))
X12_L_mafs$site=factor(X12_L_mafs$site, levels=c("KR","FR","BB","DB","HP","CR","SB","VN", "GP","CA","WA", "IP","SH","SC", "CB", "PB", "SR", "BT","BA"))

library(ggplot2)
library(viridis)
ggplot(X12_L_mafs, aes(x=site, y=freq, colour=snp,group=snp, linetype = snp)) + geom_line()+theme_minimal()+scale_color_viridis(discrete = TRUE)

ggplot(X12_L_mafs, aes(x=latitude, y=freq, color=snp)) +
  geom_point() + scale_x_reverse()+
  geom_smooth(se=FALSE, fullrange=TRUE)+theme_minimal()

####  R code to get baypass pod (simulated dataset for baypass bash script 2)
####
setwd("~/Desktop/PD_stuffies/GEAs/baypass")

source("baypass_utils.R") #this comes with BayPass download
require(corrplot) ; require(ape)
library(WriteXLS)
library(dplyr)

### First plot pop differentiation

# Read omega matrix BayPass output
omega=as.matrix(read.table("ALL_2_r2_mat_omega.out"))

# Identify pool names for plotting
colnames(omega) <- c("KR","FR","BB","DB","HP","CR","SB","VN","GP",
                        "CA","WA","IP","SH", "SC", "CB","PB","SR","BT","BA")
rownames(omega) <- c("KR","FR","BB","DB","HP","CR","SB","VN","GP",
                     "CA","WA","IP","SH", "SC", "CB","PB","SR","BT","BA")

# Create a correlation matrix of the omega values, which can be used to assess genomic differentiation between pools
cor.mat=cov2cor(omega)
corrplot(cor.mat,method="color",mar=c(2,1,2,2)+0.1,
         main=expression("Correlation map based on"~hat(Omega)))


# We can also assess population differentiation with hierarchical clustering:
bta14.tree=as.phylo(hclust(as.dist(1-cor.mat**2)))
plot(bta14.tree,type="p", main=expression("Hier. clust. tree based on"~hat(Omega)~"("*d[ij]*"=1-"*rho[ij]*")"))

#### Now we can simulate the pod for the next step in baypass process
     
# Get the Pi Beta distribution for POD generation
pi.beta.coef=read.table("ALL_2_r2_summary_beta_params.out",h=T)$Mean
     
#create the POD - simulate - don't forget to change suffix name
simu.bta <- simulate.baypass(omega.mat=omega, nsnp=100000, beta.pi=pi.beta.coef, suffix="ALL2_sim_pod")


### Now go back into bash and run baypass2.sh bash script with simulated pod, and then read in output
###

# Read the new omega matrix and compare to original. Here you want similar values between the two
pod.omega=as.matrix(read.table("ALL_2_r2.sim_mat_omega.out"))
plot(pod.omega,omega) ; abline(a=0,b=1)

# Read original xtx BayPass output
snp.xtx=read.table("ALL_2_r2_summary_pi_xtx.out",h=T)

# Look at POD xtx values, and identify SNPs where the xtx values are above the 99% significance threshold from the POD. So in the plot, it is those loci (dots) which are above the abline
pod.xtx=read.table("ALL_2_r2.sim_summary_pi_xtx.out",h=T)$M_XtX
pod.thresh=quantile(pod.xtx,probs=0.99)
plot(snp.xtx$M_XtX)
abline(h=pod.thresh,lty=2)

# Obtain the xtx threshold. Any SNPs with an xtx value greater than this are identified as outlier SNPs
pod.thresh
#99% 
# 24.97164

# Here I just saved the xtx values per SNP list, and then in excel/text editor filtered out the SNPs with an xtx greater than the threshold value as outliers.
snp.scores <- as_tibble(snp.xtx)

baypass.outs <- snp.scores %>% filter(M_XtX>24.97)

#read in snp list (the first column of the geno file for RDA)
snp.list=read.table("snp.list.txt",h=F)

#add row with consectutive numbering
snp.list$consecutive_numbers<-1:nrow(snp.list)

#merge baypass outlier df with snp.list to get outlier metadata
baypass.out.list <- merge(baypass.outs, snp.list, by.x = "MRK", by.y = "consecutive_numbers")

#remove extra columns we don't care about
baypass.out.list = subset(baypass.out.list, select = -c(2:7) )

#export as table
write.table(baypass.out.list, "baypass.out.list.txt", row.names=FALSE, sep="\t", quote = FALSE)






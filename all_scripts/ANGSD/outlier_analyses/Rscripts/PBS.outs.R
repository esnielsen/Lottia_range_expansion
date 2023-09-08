### R script to get outliers from PBScan

setwd("~/Desktop/PD_stuffies/R_work/PBS")
library(dplyr)

# read PBS output 
CA.n.c.pbs=read.table("CA.n.c.test.pbs.txt", header=T)

#to get the top 0.01% of the PBS distribution (for PBS1 which is CA.n)
CA.n.c.pbs1.99<-CA.n.c.pbs %>% filter(quantile(PBS1, 0.99)<PBS1)

write.table(CA.n.c.pbs1.99, "CA.n.c.pbs1.99.txt", row.names=FALSE, sep="\t", quote = FALSE)


#to get outliers as those with z-scores>2
CA.n.c.pbs$PBS1 <- scale(CA.n.c.pbs$PBS1)

CA.n.c.pbs1.Z <- CA.n.c.pbs[CA.n.c.pbs$PBS1>=2,]





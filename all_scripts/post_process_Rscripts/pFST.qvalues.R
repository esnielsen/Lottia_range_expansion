# Get pFST outliers based on bonferreni corrections


# to get list of values for actual pFST script
p = c(270:290)
paste(as.character(p), collapse=",")

setwd("~/Desktop/PD_stuffies/R_work/pFST")
library(dplyr)


sl<-read.table("4N.s_l.pfst.out.txt", header=F)

sl.pval <- (as.data.frame(sl[,3]))

sl.pval.n <- as.numeric(unlist(sl.pval))

sl.qval<-p.adjust(sl.pval.n,method="bonferroni")

sl.qval.df<-as.data.frame(sl.qval)

sl.qval.df[which(sl.qval.df[,1]<0.05),]

#to get lowest quantile of pFST p values

CA.n.c.pfst.99<-sl %>% filter(quantile(V3, 0.01)>V3)

write.table(CA.n.c.pfst.99, "CA.n.c.pfst.99.txt", row.names=FALSE, sep="\t", quote = FALSE)

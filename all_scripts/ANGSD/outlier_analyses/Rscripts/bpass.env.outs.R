# Get env-correlated baypass outliers

library(dplyr)

setwd("/ocean/projects/deb200006p/enielsen/LGwork/Outliers/03_baypass")

dB.df=read.table("ALL_2_r2.env.output_summary_betai_reg.out",h=T) #read output table from baypass

names(dB.df)[7] <- "dB" #rename the 7th column as dB

dB.df.outs <- dB.df %>% filter(dB>20) #filter the column to only show snps with a dB greater than 20 (this is common significance cut-off for this analysis)

bpass.env.out.list = subset(dB.df.outs , select = -c(3:6,8:10) ) #subset dataframe 

write.table(bpass.env.out.list, "bpass.env.out.list.txt", row.names=FALSE, sep="\t", quote = FALSE)

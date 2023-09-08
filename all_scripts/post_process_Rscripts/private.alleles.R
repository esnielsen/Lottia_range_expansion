# R script to get private alleles from ANGSD mafs
library(dplyr)

setwd("~/Desktop/PD_stuffies/R_work/gen.div")
maf.geno <- read.csv("by_pop_noMAF.pop.mafs.txt", sep="")
maf.freq<-maf.geno %>% select(matches("freq"))

## Change the following to have only pop start with "c", which is the pop that we are calculating prv alleles from 
df <- maf.geno %>% rename("c0"="KR", "c1" = "FR", "c2" = "BB", "c3" = "DB", "c4" = "HP", "c5" = "CR", "c6" = "SB", "c7" = "VN", "c8" = "GP", "c9" = "CA", "c10" = "WA", "E11" = "IP2", "c12" = "SH", "c13" = "SC", "c14" = "CB", "c15" = "PB", "c16" = "SR", "c17" = "BT", "c18" = "BA")


df.2<- df %>% filter(if_all(starts_with("c"), ~ . <0.01) | if_all(starts_with("c"), ~ . >0.99)) %>% filter(if_all(starts_with("E"), ~ . >0.1) & if_all(starts_with("E"), ~ .<0.9))

## plotting prv alleles per pop
library(ggplot2)

prv_alleles <- read_excel("~/Desktop/PD_stuffies/R_work/prv_alleles/prv.alleles.xlsx")
prv_alleles$pop <- factor(prv_alleles$pop, levels=c("KR","FR","BB","DB","HP","CR","SB","VN", "GP","CA","WA", "IP","SH","SC", "CB", "PB", "SR", "BT","BA"))

pdf("prv.snps.plot.pdf")
ggplot(data=prv_alleles, aes(x=pop, y=prv_snps, group=1)) +
  geom_line()+
  geom_point()+theme_minimal()
dev.off()


# mapping prv alleles
lottia_env <- read.table("env.xy.NEW.txt", header=TRUE)



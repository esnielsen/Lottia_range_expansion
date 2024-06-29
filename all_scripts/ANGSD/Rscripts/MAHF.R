# R script to get MAHF
setwd("~/Desktop/PD_stuffies/R_work/MAHF")
#af<-read.table("ALL_2.rda.geno.txt", header =T)
af<-read.table("ALL_2_geno.NEW.IP.rda.txt", header =T)

max<-(apply(af,1,function(x) which(x==max(x))))
max.t <-t(max)
max.t.df<-as.data.frame(max.t)
af.max<-t(max.t.df)

af.max<-as.data.frame(af.max)
af.max %>% count(V1)

write.table(af.max, "af.new.IP.max.txt", quote=FALSE, sep=" ", row.names=FALSE)
#edit table to have column only relate to pop number
#editting table in excel to count number of occurrences per each 19 pops

mahf<-read.table("af.max.txt", header =T)

library(ggplot2)
mahf$site <- factor(mahf$site, levels=c("KR","FR","BB","DB","HP","CR","SB","VN","GP","CA","WA","IP","SH","SC","CB","PB","SR","BT","BA"))

pdf("mahf.plot.pdf")

ggplot(data=mahf, aes(x=site, y=MAHF, group=1)) +
  geom_line()+
  geom_point()+theme_minimal()

dev.off()




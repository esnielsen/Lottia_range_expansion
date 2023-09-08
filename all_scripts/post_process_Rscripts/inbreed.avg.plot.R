### Script to get average inbreeding coeff from ngsF output

library(ggplot2)

setwd("~/Desktop/PD_stuffies/R_work/inbreed_coef")

filelist = list.files(pattern = "*.indF")

datalist = lapply(filelist, function(x)read.table(x, header=F, row.names = NULL))


for (x in datalist) {
  avg <- mean(x$V1)
  
  print(avg)
}

## editted that output in excel to give first column with site names

per_pop_inbreed <- read_excel("per.pop.inbreed.xlsx")

per_pop_inbreed$site=factor(per_pop_inbreed$site, levels=c("KR","FR","BB","DB","HP","CR","SB","VN", "GP","CA","WA", "IP","SH","SC", "CB", "PB", "SR", "BT","BA"))

ALL.cols=c("#436EEE", "#6959CD","#009ACD","#B9D3EE","#40E0D0","#458B00","#66CD00", "#00FF00","#8B7500","#FFFF00", "#FFD700","#EE7600", "#CD3700", "#FF1493","#FF83FA", "#8B1C62", "#CD6090", "#9F79EE", "#68228B")

pdf("inbreed.plot.pdf")
ggplot(per_pop_inbreed, aes(x=site, y=F)) + geom_point(aes(color=site), size=5)+geom_point(shape = 1,size = 5,colour = "black") +scale_color_manual(values=ALL.cols)+ 
  scale_y_continuous(limits = c(0, 0.004), breaks = seq(0, 0.004, by = 0.0005))+
  theme_minimal()+theme(axis.text=element_text(size=14))+
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust=1))
dev.off()

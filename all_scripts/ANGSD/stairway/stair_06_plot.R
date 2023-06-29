##### R script to plot stairway outputs

# basically takes the summary file from the final stairway script and plots Ne over time in every 1000 of years
# what you may want to edit is the xlim and ylim of the plots (i.e. I made the ylim a bit smaller than plot outputted by stairway program because we're interested in more recent changes)

setwd("~/Desktop/PD_stuffies/R_work/stairway")

#read four CA.n site files
KR=read.table(file="KR_fold.final.summary",header=T)
KR$population="KR"
FR=read.table(file="FR_fold.final.summary",header=T)
FR$population="FR"
BB=read.table(file="BB_fold.final.summary",header=T)
BB$population="BB"
DB=read.table(file="DB_fold.final.summary",header=T)
DB$population="DB"

#combine 4 pops
CAn.all=rbind(KR,FR,BB,DB)

#read CA.n, CA.c, CA.s, Mex files
CA_n=read.table(file="CA.n_fold.final.summary",header=T)
CA_n$population="CA_n"
CA_c=read.table(file="CA.c_fold.final.summary",header=T)
CA_c$population="CA_c"
CA_s=read.table(file="CA.s.NEW_fold.final.summary",header=T)
CA_s$population="CA_s"
MEX=read.table(file="Mex.NEW_fold.final.summary",header=T)
MEX$population="MEX"

#combine all tables
ALL.all=rbind(CA_n,CA_c,CA_s,MEX)

# New plotting script to plot all pops of interest together

pdf("CA.nstairway2.plot.COLS.pdf",height = 6.25,width = 10)

plot(KR$year/1000,KR$Ne_median/1000, log=c("xy"), type="n", xlab="Time (1k years ago)", ylab="Effective Population Size (1k individuals)",xlim=c(4,100),ylim=c(20,10000))

lines(KR$year/1000,KR$Ne_median/1000,type="s",col="#436EEE",lwd = 5)
lines(KR$year/1000,KR$Ne_2.5./1000,type="s",col="#436EEE",lty=2)
lines(KR$year/1000,KR$Ne_97.5./1000,type="s",col="#436EEE",lty=2)

lines(FR$year/1000,FR$Ne_median/1000,type="s",col="#6959CD",lwd = 5)
lines(FR$year/1000,FR$Ne_2.5./1000,type="s",col="#6959CD",lty=2)
lines(FR$year/1000,FR$Ne_97.5./1000,type="s",col="#6959CD",lty=2)

lines(BB$year/1000,BB$Ne_median/1000,type="s",col="#009ACD",lwd = 5)
lines(BB$year/1000,BB$Ne_2.5./1000,type="s",col="#009ACD",lty=2)
lines(BB$year/1000,BB$Ne_97.5./1000,type="s",col="#009ACD",lty=2)

lines(DB$year/1000,DB$Ne_median/1000,type="s",col="#B9D3EE",lwd = 5)
lines(DB$year/1000,DB$Ne_2.5./1000,type="s",col="#B9D3EE",lty=2)
lines(DB$year/1000,DB$Ne_97.5./1000,type="s",col="#B9D3EE",lty=2)

legend(60,250,legend = c("KR","FR","BB","DB","95% CI"),col=c("#436EEE","#6959CD","#009ACD","#B9D3EE","black"),lty=c(1,1,1,1,2),lwd=c(5,5,5,5,1),cex=1)

dev.off()

# Now do for larger regions
pdf("Ca.Mex.NEW.nstairway2.plot.COLS.pdf",height = 6.25,width = 10)

plot(CA_n$year/1000,CA_n$Ne_median/1000, log=c("xy"), type="n", xlab="Time (1k years ago)", ylab="Effective Population Size (1k individuals)",xlim=c(4,100),ylim=c(20,10000))

lines(CA_n$year/1000,CA_n$Ne_median/1000,type="s",col="#36648B",lwd = 5)
lines(CA_n$year/1000,CA_n$Ne_2.5./1000,type="s",col="#36648B",lty=2)
lines(CA_n$year/1000,CA_n$Ne_97.5./1000,type="s",col="#36648B",lty=2)

lines(CA_c$year/1000,CA_c$Ne_median/1000,type="s",col="#B3EE3A",lwd = 5)
lines(CA_c$year/1000,CA_c$Ne_2.5./1000,type="s",col="#B3EE3A",lty=2)
lines(CA_c$year/1000,CA_c$Ne_97.5./1000,type="s",col="#B3EE3A",lty=2)

lines(CA_s$year/1000,CA_s$Ne_median/1000,type="s",col="#FFA500",lwd = 5)
lines(CA_s$year/1000,CA_s$Ne_2.5./1000,type="s",col="#FFA500",lty=2)
lines(CA_s$year/1000,CA_s$Ne_97.5./1000,type="s",col="#FFA500",lty=2)

lines(MEX$year/1000,MEX$Ne_median/1000,type="s",col="#CD69C9",lwd = 5)
lines(MEX$year/1000,MEX$Ne_2.5./1000,type="s",col="#CD69C9",lty=2)
lines(MEX$year/1000,MEX$Ne_97.5./1000,type="s",col="#CD69C9",lty=2)

legend(60,250,legend = c("CA_n","CA_c","CA_s","MEX","95% CI"),col=c("#36648B", "#B3EE3A", "#FFA500", "#CD69C9","black"),lty=c(1,1,1,1,2),lwd=c(5,5,5,5,1),cex=1)

dev.off()

#####
##### old ploting script (NOT USED!)
library(ggplot2)
p<- ggplot(data=CAn.all, aes(x=year/1000, y=Ne_median/1000, color=population)) +geom_line(size=1.5)+
  geom_ribbon(aes(ymin=Ne_2.5./1000,ymax=Ne_97.5./1000, fill = factor(population)), alpha = 0.3,colour = NA,show_guide = FALSE)+
  theme_bw(base_size = 20)+ scale_y_continuous(name="Ne", labels = scales::comma)+#scale_x_continuous(name="Years", labels=c("0","100k","200k",
  #scale_x_continuous(name="Time (1k years ago)",limits =  c(0,100))+                                                                                                                         # "300k"),limits =  c(0,3e+05))+ 
  scale_fill_manual(values=c("#458B00", "#98FB98", "#B9D3EE", "#009ACD"))+
  scale_color_manual(values=c("#458B00", "#98FB98", "#B9D3EE", "#009ACD"))

pdf("CA_n.stairway.pdf")
p
dev.off()

#CA 4N colors: (values=c("#458B00", "#98FB98", "#B9D3EE", "#009ACD"))
#CA & Mex cols: (values=c("orange", "lightblue", "seagreen3", "purple"))

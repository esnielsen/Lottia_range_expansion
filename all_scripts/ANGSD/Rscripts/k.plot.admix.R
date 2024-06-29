#### Scripts on how to analyse NGSadmix results

### Choose K

#read in the data

data<-list.files(pattern = ".log", full.names = T)

#look at data to make sure it only has the log files

data

#use lapply to read in all our log files at once
bigData<-lapply(1:50, FUN = function(i) readLines(data[i]))

# find the line that starts with "best like=" or just "b"
library(stringr)


#this will pull out the line that starts with "b" from each file and return it as a list
foundset<-sapply(1:50, FUN= function(x) bigData[[x]][which(str_sub(bigData[[x]], 1, 1) == 'b')])

foundset

#now we need to pull out the first number in the string, we'll do this with the function sub

as.numeric( sub("\\D*(\\d+).*", "\\1", foundset) )

#make a dataframe with an index 1:7, this corresponds to our K values
logs<-data.frame(K = rep(1:10, each=5))

#add to it our likelihood values

logs$like<-as.vector(as.numeric( sub("\\D*(\\d+).*", "\\1", foundset) ))

#and now we can calculate our delta K and probability

tapply(logs$like, logs$K, FUN= function(x) mean(abs(x))/sd(abs(x)))
#choose K value with highest maximum likelihood



### Get K with CLUMPAK

#import logfiles & convert to clumpak format
logs <- as.data.frame(read.table("logfile"))

logs$K <- c(rep("1", 8), rep("10", 8), rep("2", 8), rep("3", 8), rep("4", 
                                                          8), rep("5", 8), rep("6", 8), rep("7", 8), rep("8", 8), rep("9", 8))
write.table(logs[, c(2, 1)], "logfile_formatted", row.names = F, 
            col.names = F, quote = F)


### Visualize NGSadmix output with structure plots

q<-read.table("ALL_2_maf0.05_pctind0.5_maxdepth15_pruned_K3_run2.qopt")

pop<-read.table("info.txt", header = T)

ord<-order(pop$lat)
ord.rev <- rev(ord)

barplot(t(q)[,ord],
        col=1:3, #change colors to number of K
        names=pop$pop[ord],
        las=2,
        space=0,
        border=NA,
        xlab="Individuals",
        ylab="Admixture proportions for K=3 pruned")


logs <- as.data.frame(read.table("logfile"))
logs$K <- c(rep("1", 5), rep("10", 4), rep("2", 5), rep("3", 5), rep("4", 5), rep("5", 5), rep("6", 5), rep("7", 5), rep("8", 5), rep("9", 5))
write.table(logs[, c(2, 1)], "logfile_formatted", row.names = F, 
            col.names = F, quote = F)

admix <- t(as.matrix(read.table("ALL_2_maf0.05_pctind0.5_maxdepth15_pruned_K3_run2.qopt")))
head(admix[, 1:10])


## Plotting with Zoon plot_admix R code

source("~/Desktop/PD_stuffies/scripts/plot_admixture_v5_function.R")
"#36648B"=blue
"#FFA500"=lightorange
"#CD3700"=orange
"#CD69C9"=purple 
"#B3EE3A"=green
"#EEEE00"=yellow
"#00E5EE"=turquoise

#### K=2
dir=("~/Desktop/PD_stuffies/R_work/admix_K/ALL_pruned/") # path to input files

inName="ALL_2_maf0.05_pctind0.5_maxdepth15_pruned_K2_run2.qopt" # name of the input file to plot, output of ngsAdmix or ADMIXTURE run

npops=2

samples <- read.table("~/Desktop/PD_stuffies/R_work/admix_all_pruned_OLD/all.filt.info.txt")

i2p=samples[,1:2]
names(i2p)=c("ind","pop")
row.names(i2p)=i2p$ind

tbl=read.table(paste(dir,inName,sep=""),header=F)
#tbl<-tbl[-c(343,340,339,342,338,335,341,351,337,352,353,349),]
row.names(tbl)= i2p$ind

in.tbl<-transform(merge(tbl,i2p,by=0), row.names=Row.names, Row.names=NULL)

in.tbl$pop=factor(in.tbl$pop, levels=c("BA", "BT", "SR", "PB", "CB", "SC", "SH", "IP", "WA", "CA", "GP", "VN", "SB", "CR", "HP", "DB", "BB", "FR", "KR"))

colors=c("#36648B", "#CD69C9")

pdf("ALL.new.ord.K2.pdf", width=7, height=4)
ords=plotAdmixture(data=in.tbl,npops=npops,grouping.method="distance",vshift=0.1, colors = colors)
dev.off()

#### K=3
dir=("~/Desktop/PD_stuffies/R_work/admix_K/ALL_pruned/") # path to input files

inName="ALL_2_maf0.05_pctind0.5_maxdepth15_pruned_K3_run2.qopt" # name of the input file to plot, output of ngsAdmix or ADMIXTURE run

npops=3

samples <- read.table("~/Desktop/PD_stuffies/R_work/admix_all_pruned_OLD/all.filt.info.txt")

i2p=samples[,1:2]
names(i2p)=c("ind","pop")
row.names(i2p)=i2p$ind

tbl=read.table(paste(dir,inName,sep=""),header=F)
#tbl<-tbl[-c(343,340,339,342,338,335,341,351,337,352,353,349),]
row.names(tbl)= i2p$ind

in.tbl<-transform(merge(tbl,i2p,by=0), row.names=Row.names, Row.names=NULL)

in.tbl$pop=factor(in.tbl$pop, levels=c("BA", "BT", "SR", "PB", "CB", "SC", "SH", "IP", "WA", "CA", "GP", "VN", "SB", "CR", "HP", "DB", "BB", "FR", "KR"))

colors=c("#36648B", "#B3EE3A", "#CD69C9")

pdf("ALL.new.ord.K3.pdf", width=7, height=4)
ords=plotAdmixture(data=in.tbl,npops=npops,grouping.method="distance",vshift=0.1, colors = colors)
dev.off()

#### K=4
dir=("~/Desktop/PD_stuffies/R_work/admix_K/ALL_pruned/") # path to input files

inName="ALL_2_maf0.05_pctind0.5_maxdepth15_pruned_K4_run2.qopt" # name of the input file to plot, output of ngsAdmix or ADMIXTURE run

npops=4

samples <- read.table("~/Desktop/PD_stuffies/R_work/admix_all_pruned_OLD/all.filt.info.txt")

i2p=samples[,1:2]
names(i2p)=c("ind","pop")
row.names(i2p)=i2p$ind

tbl=read.table(paste(dir,inName,sep=""),header=F)
#tbl<-tbl[-c(343,340,339,342,338,335,341,351,337,352,353,349),]
row.names(tbl)= i2p$ind

in.tbl<-transform(merge(tbl,i2p,by=0), row.names=Row.names, Row.names=NULL)

in.tbl$pop=factor(in.tbl$pop, levels=c("BA", "BT", "SR", "PB", "CB", "SC", "SH", "IP", "WA", "CA", "GP", "VN", "SB", "CR", "HP", "DB", "BB", "FR", "KR"))

colors=c( "#B3EE3A", "#CD69C9", "#36648B", "#FFA500")

pdf("ALL.new.ord.K4.pdf", width=7, height=4)
ords=plotAdmixture(data=in.tbl,npops=npops,grouping.method="distance",vshift=0.1, colors = colors)
dev.off()


#### K=5
dir=("~/Desktop/PD_stuffies/R_work/admix_K/CA.N_pruned/") # path to input files

inName="ALL_CA.N_maf0.05_pctind0.5_maxdepth15_pruned_K5_run2.qopt" # name of the input file to plot, output of ngsAdmix or ADMIXTURE run

npops=5

samples <- read.csv("~/Desktop/PD_stuffies/R_work/admix_all_pruned/CA.N.info.csv", sep=";")

i2p=samples[,2:3]
names(i2p)=c("ind","pop")
row.names(i2p)=i2p$ind

tbl=read.table(paste(dir,inName,sep=""),header=F)
row.names(tbl)= i2p$ind

in.tbl<-transform(merge(tbl,i2p,by=0), row.names=Row.names, Row.names=NULL)

in.tbl$pop=factor(in.tbl$pop, levels=c("KR","FR","BB","DB","HP","CR","SB","VN", "GP","CA","WA", "IP","SH","SC", "CB", "PB", "SR", "BT","BA"))

colors=c("#B3EE3A","#FFA500","#00E5EE","#36648B","#CD69C9")

pdf("CA.N.K5.pdf", width=7, height=4)
ords=plotAdmixture(data=in.tbl,npops=npops,grouping.method="distance",vshift=0.1, colors = colors)
dev.off()

#### K=6
dir=("~/Desktop/PD_stuffies/R_work/admix_K/CA_pruned/") # path to input files

inName="ALL_CA_maf0.05_pctind0.5_maxdepth15_pruned_K6_run2.qopt" # name of the input file to plot, output of ngsAdmix or ADMIXTURE run

npops=6

samples <- read.csv("~/Desktop/PD_stuffies/R_work/admix_all_pruned/all.R5.filt.info.csv", sep=";")

i2p=samples[,2:3]
names(i2p)=c("ind","pop")
row.names(i2p)=i2p$ind

tbl=read.table(paste(dir,inName,sep=""),header=F)
row.names(tbl)= i2p$ind

in.tbl<-transform(merge(tbl,i2p,by=0), row.names=Row.names, Row.names=NULL)

in.tbl$pop=factor(in.tbl$pop, levels=c("KR","FR","BB","DB","HP","CR","SB","VN", "GP","CA","WA", "IP","SH","SC", "CB", "PB", "SR", "BT","BA"))

colors=c("#FFA500","#B3EE3A","#CD69C9","#CD3700","#00E5EE","#36648B")

pdf("CA.K6.pdf", width=7, height=4)
ords=plotAdmixture(data=in.tbl,npops=npops,grouping.method="distance",vshift=0.1, colors = colors)
dev.off()

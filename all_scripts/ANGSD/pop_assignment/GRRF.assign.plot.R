#### Get assignment accuracy from GRRF SNPs ####

library(assignPOP)
library(dplyr)
library(klaR)
library(RRF)
library(randomForest)
library(ggplot2)

setwd("~/Desktop/Erica/GRRF_2.0")

# read meta data with IDs and pops to assign to 
geno.new1.meta <-read.table("GRRF.CA.c.s.L.metadata.txt", header=F)

#read gen imputed genomic data (this is the input file used to run GRRF)
geno.new1.all <-read.table("GRRF.CA.n.c.s.L_2pop.wo.pop.txt", header=TRUE)

#read GRRF snp list
#make sure you delete duplicate SNPs as it wont allow dup row names (did this in excel-took higher of GRRF value)
grrf.new1_sel_snps <- read.table("GRRF.CA.n.c.s.2.sel.SNPS.txt", header=F, row.names = 1)


# Below we get assignment accuracy using 1st only top 10 SNPs, then incremently adding another 10 SNPs until we reach full snp list
##########################

#make list of numbers increasing in increments of 10 until you reach # of snps in GRRF selected output (in this example we have 49 SNPs)
n<-c(10, 20, 30, 40, 49)


for (i in n) {
  #filter snp list to only include that multiple of 10
  grrf2<-grrf.new1_sel_snps %>% slice(1:i)
  
  #filter geno data to match rows of snp_sel data
  geno<-geno.new1.all[colnames(geno.new1.all) %in% rownames(grrf2)]
  
  #combine geno data with pop data to create assignPop input
  geno.in<-cbind(geno.new1.meta$V1, geno, geno.new1.meta$V2)
  
  #rename last col
  names(geno.in)[length(names(geno.in))]<-"pop_label" 
  #rename first col
  colnames(geno.in)[1] = "samp_id"
  #change pop label to factor
  geno.in$pop_label <- as.factor(geno.in$pop_label)
  
  
  #run assignments, using both MC and Kfold
  assign.MC( geno.in, train.inds=c(0.5, 0.6, 0.7, 0.8, 0.9), pca.method=TRUE, iterations=30, model="svm", dir=paste0(i, ".res_GRRF1_2pop_MC/"))
  
  assign.kfold( geno.in, k.fold=c(2, 3, 4, 5, 6), pca.method=TRUE, model="lda", dir=paste0(i, ".res_GRRF1_2pop_K/"))
}


## after that finishes running, calculate the assignment accuracy
for (i in n) {
  accuMC <- accuracy.MC(dir=paste0(i, ".res_GRRF1_2pop_MC/"))
  accuKF <- accuracy.kfold(dir=paste0(i, ".res_GRRF1_2pop_K/"))
}

###### then read all of the outputs per MC or K assign tests and combine into single table

## For MC outputs:
#list all outputs per run
dirs <- list.dirs()
dirs <- dirs[ grepl("res_GRRF1_2pop_MC", dirs) ]
#merge them into file list
files <- lapply(dirs, list.files, pattern="Rate_of_150_tests_2_pops.txt", full.names = TRUE)
#read the file list, and combine by row into single table
tables <- lapply(files, read.table, header = TRUE)
combined.MC.df <- do.call(rbind , tables)
#write table
write.table(combined.MC.df, file=c("2pop.combined.MC.df.txt"), row.names=FALSE, col.names=TRUE, quote=FALSE) 


## For K outputs:
dirs <- list.dirs()
dirs <- dirs[ grepl("res_GRRF1_2pop_K", dirs) ]
#merge them into file list
files <- lapply(dirs, list.files, pattern="Rate_of_20_tests_2_pops.txt", full.names = TRUE)
#read the file list, and combine by row into single table
tables <- lapply(files, read.table, header = TRUE)
combined.K.df <- do.call(rbind , tables)
#write table
write.table(combined.K.df, file=c("2pop.combined.K.df.txt"), row.names=FALSE, col.names=TRUE, quote=FALSE) 


#now we plot the assign rates for K and MC
#####

## starting with K
#create df with N rep of 10 per 20X reps for K outputs (CHANGE reps depending on # of snps)
k<-rep(1:5, each=20) #  1:5 because we have ~50 SNPs, 20 we don't change as that's from K assignments

times_ten <- function(x){{
  x <- x * 10
}
  return(x)
}

k10 <- sapply(k, function(x) times_ten(x))


#read the combined assign rate file (make sure to read assign rates as numeric!)
#combined.K.df <- read.csv("~/Desktop/PD_stuffies/R_work/GRRF/combined.K.df.txt", sep="")

#create df with K rep plus assignments
assign.K<-cbind(combined.K.df,k10)

#change last column name and to factor
colnames(assign.K)[7] ="loci" #the column value might change depending on the number of pops assigning to
assign.K$loci<-as.factor(assign.K$loci)
assign.K$assign.rate.all<-as.numeric(assign.K$assign.rate.all)


#boxplot
pdf("GRRF1_pop2_Kfold.assign.rate.pdf")
p1<-ggplot(assign.K, aes(x=loci, y=assign.rate.all)) +  geom_boxplot()+ggtitle("K-fold assignment accuracy") +theme_minimal()
dev.off()

### Now do for MC outputs

#read MC assign rates
#combined.MC.df <- read.csv("~/Desktop/PD_stuffies/R_work/GRRF/combined.MC.df.txt", sep="")
combined.MC.df <- read.csv("~/Desktop/PD_stuffies/R_work/GRRF/2pop.combined.MC.df.txt", sep="")


#create df with N rep 150X (CHANGE reps depending on # of snps)
mc<-rep(1:5, each=150)
mc10 <- sapply(mc, function(x) times_ten(x))
assign.mc<-cbind(combined.MC.df,mc10)

colnames(assign.mc)[7] ="loci" #it is column 7 for coarse data
assign.mc$loci<-as.factor(assign.mc$loci)
assign.mc$assign.rate.all<-as.numeric(assign.mc$assign.rate.all)


p2 <- ggplot(assign.mc, aes(x=loci, y=assign.rate.all)) + 
  geom_boxplot()+ggtitle("MC assignment accuracy") +theme_minimal()

pdf("GRRF1_pop2_MC.assign.rate.pdf")
p2
dev.off()

require(gridExtra)
pdf("GRRF1_pop2_assign.rate.pdf")
grid.arrange(p, p2, ncol=2)
dev.off()

#### Getting assignment for CA.n L individs ######
####################################

#read plink input with 
CA.n.c.all_new1 <-read.table("GRRF.CA.n.c.s.L.all_R2.pruned.A.bin.raw.txt", header=TRUE)
#slice the input plink file to only include the L individs from the N (i.e. the 'unknown' individs we want to assign)
CA.n.c.filt_new1<-CA.n.c.all_new1 %>% slice(1:62)

#here we select all of the GRRF selected SNPs (can slice some of the columns if we don't want to use all of them)
grrf2<-grrf.new1_sel_snps %>% slice(1:49)
geno<-geno.new1.all[colnames(geno.new1.all) %in% rownames(grrf2)]
geno.in<-cbind(geno.new1.meta$V1, geno, geno.new1.meta$V2)

#filter CA.n.filt to only have grrf loci
CA.n.L.grrf<-CA.n.c.filt_new1[colnames(CA.n.c.filt_new1) %in% colnames(geno.in)]

#make all numeric
CA.n.L.grrf.m<-as.matrix(sapply(CA.n.L.grrf, as.numeric))

#make test popid for impute
ID<-seq(from = 1, to = 62)

#CA.sm.imp<-cbind(ID, CA.sm.grrf)

#impute unknown individs data
imputed<-rfImpute(CA.n.L.grrf.m, ID, iter=10, ntree=5000)


#change to df so you get around error: Input data sets are not the same type. Enter '?assign.X' to see description of x1 and x2 arguments
imputed.df<-as.data.frame(imputed)


#NB: x2 should have first column be sampID (so should be num snp col +1)
#NB: x1 should have num snp col +2, with first col being sampID and final col being popID
## Run assigments using the 3 options available
assign.X( x1=geno.in, x2=imputed.df, dir="GGRF1_2pop_30SNPS-assign_RF/", model="randomForest", pca.method=TRUE)

assign.X( x1=geno.in, x2=imputed.df, dir="GGRF1_2pop_30SNPS-assign_Bayes/", model="naiveBayes", pca.method=TRUE)

assign.X( x1=geno.in, x2=imputed.df, dir="GGRF1_2pop_30SNPS-assign_tree/", model="tree", pca.method=TRUE)


# Running again with finer scale pops
######################################

geno.new1.meta <-read.table("GRRF.CA.c.s.L.metadata.txt", header=F)

#read gen impute data (this is the input file used to run GRRF)
geno.new1.3pop.all <-read.table("GRRF.CA.c.s.L_3pop.wo.pop.txt", header=TRUE)

#read GRRF snp list
#make sure you delete duplicate SNPs as it wont allow dup row names (did this in excel-took higher of GRRF value)
grrf.new1.3pop_sel_snps <- read.table("grrf.1_3pop.snp.list.txt", header=F, row.names = 1)


n<-c(10, 20, 30, 40, 50, 60)


for (i in n) {
  grrf2<-grrf.new1.3pop_sel_snps %>% slice(1:i)
  
  #filter geno data to match rows of snp_sel data
  geno<-geno.new1.3pop.all[colnames(geno.new1.3pop.all) %in% rownames(grrf2)]
  
  #combine geno data with pop data to create assignPop input
  geno.in<-cbind(geno.new1.meta$V1, geno, geno.new1.meta$V2)
  
  #rename last col
  names(geno.in)[length(names(geno.in))]<-"pop_label" 
  #rename first col
  colnames(geno.in)[1] = "samp_id"
  #change pop label to factor
  geno.in$pop_label <- as.factor(geno.in$pop_label)
  
  
  #run assign
  assign.MC( geno.in, train.inds=c(0.5, 0.6, 0.7, 0.8, 0.9), pca.method=TRUE, iterations=30, model="svm", dir=paste0(i, ".res_GRRF1_3pop_MC/"))
  
  assign.kfold( geno.in, k.fold=c(2, 3, 4, 5, 6), pca.method=TRUE, model="lda", dir=paste0(i, ".res_GRRF1_3pop_K/"))
}


## after that finishes running, calculate the assignment accuracy per 10 additional SNPs
for (i in n) {
  accuMC <- accuracy.MC(dir=paste0(i, ".res_GRRF1_3pop_MC/"))
  accuKF <- accuracy.kfold(dir=paste0(i, ".res_GRRF1_3pop_K/"))
}

## then read all of the outputs per MC or K assign tests and combine into single table
#list all outputs per run
dirs <- list.dirs()
dirs <- dirs[ grepl("res_GRRF1_3pop_MC", dirs) ]
#merge them into file list
files <- lapply(dirs, list.files, pattern="Rate_of_150_tests_3_pops.txt", full.names = TRUE)
#read the file list, and combine by row into single table
tables <- lapply(files, read.table, header = TRUE)
combined.MC.df <- do.call(rbind , tables)
#write table
write.table(combined.MC.df, file=c("3pop.combined.MC.df.txt"), row.names=FALSE, col.names=TRUE, quote=FALSE) 


#do same for K outputs now
dirs <- list.dirs()
dirs <- dirs[ grepl("res_GRRF1_2pop_K", dirs) ]
#merge them into file list
files <- lapply(dirs, list.files, pattern="Rate_of_20_tests_2_pops.txt", full.names = TRUE)
#read the file list, and combine by row into single table
tables <- lapply(files, read.table, header = TRUE)
combined.K.df <- do.call(rbind , tables)
#write table
write.table(combined.K.df, file=c("3pop.combined.K.df.txt"), row.names=FALSE, col.names=TRUE, quote=FALSE) 


#now we plot the assign rates for K and MC

#create df with 1-13 rep 20X (CHANGE reps depending on # of snps)
k<-rep(1:6, each=20)

times_ten <- function(x){{
  x <- x * 10
}
  return(x)
}

k10 <- sapply(k, function(x) times_ten(x))


#read the combined assign rate file (make sure to read assign rates as numeric!)
#combined.K.df <- read.csv("~/Desktop/PD_stuffies/R_work/GRRF/combined.K.df.txt", sep="")

assign.K<-cbind(combined.K.df,k10)

#change last column name and to factor
colnames(assign.K)[7] ="loci" #it is column 7 for coarse data
assign.K$loci<-as.factor(assign.K$loci)
assign.K$assign.rate.all<-as.numeric(assign.K$assign.rate.all)

#boxplot
pdf("GRRF1_pop3_Kfold.assign.rate.pdf")
ggplot(assign.K, aes(x=loci, y=assign.rate.all)) +  geom_boxplot()+ggtitle("K-fold assignment accuracy") +theme_minimal()
dev.off()

### Now do for MC outputs

#read MC assign rates
combined.MC.df <- read.csv("~/Desktop/PD_stuffies/R_work/GRRF/3pop.combined.MC.df.txt", sep="")

#create df with N rep 150X (CHANGE reps depending on # of snps)
mc<-rep(1:5, each=150)
mc10 <- sapply(mc, function(x) times_ten(x))
assign.mc<-cbind(combined.MC.df,mc10)

colnames(assign.mc)[7] ="loci" #it is column 7 for coarse data
assign.mc$loci<-as.factor(assign.mc$loci)
assign.mc$assign.rate.all<-as.numeric(assign.mc$assign.rate.all)

p2 <- ggplot(assign.mc, aes(x=loci, y=assign.rate.all)) + 
  geom_boxplot()+ggtitle("MC assignment accuracy") +theme_minimal()

pdf("GRRF1_pop3_MC.assign.rate.pdf")
p2
dev.off()

require(gridExtra)
pdf("GRRF1_pop3_assign.rate.pdf")
grid.arrange(p, p2, ncol=2)
dev.off()


#### doing assignment on CA.n L individs ######
####                                  ######

#read the plink file for all CA.n.c large individs

CA.n.c.all_new1 <-read.table("GRRF.CA.n.c.s.L.all_R2.pruned.A.bin.raw.txt", header=TRUE)
#slice the input plink file to only include the L individs from the N (i.e. the 'unknown' individs we want to assign)
CA.n.c.filt_new1<-CA.n.c.all_new1 %>% slice(1:62)

#here we select all of the GRRF selected SNPs (can slice some of the columns if we don't want to use all of them)
grrf2<-grrf.new1_sel_snps %>% slice(1:60)
geno<-geno.new1.all[colnames(geno.new1.all) %in% rownames(grrf2)]
geno.in<-cbind(geno.new1.meta$V1, geno, geno.new1.meta$V2)

#read grrf snp geno data (or just use the geno file above[which is already the filtered grrf input with sel snps])
#geno.grrf <-read.table("assign.geno.snps.txt", header=TRUE)

#filter CA.n.filt to only have grrf loci
CA.n.L.grrf<-CA.n.c.filt_new1[colnames(CA.n.c.filt_new1) %in% colnames(geno.in)]

#make all numeric
CA.n.L.grrf.m<-as.matrix(sapply(CA.n.L.grrf, as.numeric))

#make test popid for impute
ID<-seq(from = 1, to = 62)

#CA.sm.imp<-cbind(ID, CA.sm.grrf)

#impute SM data
imputed<-rfImpute(CA.n.L.grrf.m, ID, iter=10, ntree=5000)

#change to df so you get around error: Input data sets are not the same type. Enter '?assign.X' to see description of x1 and x2 arguments
imputed.df<-as.data.frame(imputed)

#assign individs
assign.X( x1=geno.in, x2=imputed.df, dir="GGRF1_3pop_30SNPS-assign_R/", model="randomForest", pca.method=TRUE)


##################################
### Plotting assignment as barplots
library(ggplot2)
library(forcats)
library(ggthemes)
library(patchwork)
library(tidyr)

coarse_RF <- read_excel("coarse_RF.xlsx", 
                        +     col_types = c("numeric", "text", "numeric", 
                                            +         "numeric", "numeric"))

grrf_df<-pivot_longer(data= coarse_RF,
                      cols = c("1":"2"),
                      values_to = "Values",
                      names_to = "assign")

#plot with 2 colors
ggplot(grrf_df, aes(factor(samp_id), Values, fill = factor(assign))) +
  geom_col(color = "gray", linewidth = 0.1) +
  facet_grid(~fct_inorder(pop), switch = "x", scales = "free", space = "free") +
  theme_minimal() + labs(x = "Individuals", title = "170 loci-RF", y = "% assigned") +
  scale_y_continuous(expand = c(0, 0)) +
  scale_x_discrete(expand = expansion(add = 1)) +
  theme(
    panel.spacing.x = unit(0.1, "lines"),
    axis.text.x = element_blank(),
    panel.grid = element_blank()
  ) + scale_fill_manual(values=c("#36648B",
                                 "#FFA500"))


# 3 pop
grrf_df<-pivot_longer(data= X3pop_RF,
                      cols = c("1":"3"),
                      values_to = "Values",
                      names_to = "assign")

ggplot(grrf_df, aes(factor(Ind.ID), Values, fill = factor(assign))) +
  geom_col(color = "gray", linewidth = 0.1) +
  facet_grid(~fct_inorder(pop), switch = "x", scales = "free", space = "free") +
  theme_minimal() + labs(x = "Individuals", title = "180 loci-RF", y = "% assigned") +
  scale_y_continuous(expand = c(0, 0)) +
  scale_x_discrete(expand = expansion(add = 1)) +
  theme(
    panel.spacing.x = unit(0.1, "lines"),
    axis.text.x = element_blank(),
    panel.grid = element_blank()
  ) + scale_fill_manual(values=c("#36648B", "yellow2", "darkorange"))



## Run stats to see if pops differ in their assignments

#read assignments
coarse_RF <- read_excel("coarse_RF.xlsx", 
                        col_types = c("numeric", "text", "numeric", 
                                      "numeric", "numeric"))


#run anova
one.way <- aov(North ~ pop, data = coarse_RF)

summary(one.way)

#pop is not sign diff
Df Sum Sq Mean Sq F value Pr(>F)  
pop          3  1.140  0.3800    2.34 0.0836 .
Residuals   54  8.769  0.1624                 
---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

# plot boxplot w/signif
library(ggplot2)
library(ggsignif)
library(ggpubr)

#do pairwise comparison tests
my_comparisons <- list( c("KR", "FR"), c("KR", "BB"), c("KR", "DB"), c("FR", "BB"), c("FR", "DB"), c("BB", "DB") )
ggboxplot(coarse_RF, x = "pop", y = "North",
          color = "pop", palette = "jco")+ 
  stat_compare_means(comparisons = my_comparisons) # Add pairwise comparisons p-value

###basically there is no signficant difference in assignments between pops

#compare each pop to the mean of all combined
compare_means(North ~ pop,  data = coarse_RF, ref.group = ".all.",
              method = "t.test")

# Visualize
ggboxplot(coarse_RF, x = "pop", y = "North",
          color = "pop", palette = "jco")+
  stat_compare_means(method = "anova")+      # Add global p-value
  stat_compare_means(label = "p.signif", method = "t.test",
                     ref.group = ".all.") 


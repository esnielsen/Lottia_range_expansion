###### Script to identify outliers with GRRF

### E.S. Nielsen Jan 2023

## start with plink .raw file, from --recode A option recoding .tped file to have 0,1,2 represent different alleles
## rows are individuals, columns are loci
#First 6 columns are metadata, next there's genotypes (missing is NA)
#I changed the file from .raw to .txt


library(randomForest)
library(RRF)
library(dplyr)

#read input geno file (this is all CA individs)
geno.all<-read.table("CA_2_maf0.05_pctind0.5_maxdepth15_R2.pruned.A.bin.txt", header=TRUE)

# slice to only include L individs
# first need to get IDs corresponding to the large individs
CA.info <- read.delim("~/Desktop/PD_stuffies/R_work/PCAs/CA.info.txt") #this is info for CA.bam.filelist used to make plink file
which(CA.info$size_group == "40-55 (Large)") #lists rows with L value for size group [do "10-25 (small)" to get just small individs]
# edited the above output in excel to make list of numbs sep by commas
# now slice the plink input file to only correspond to L individs
geno.raw<-geno.all %>% slice(1,5,7,8,9,10,11,14,15,17,19,23,24,26,28,30,31,33,34,35,37,38,40,41,45,46,48,49,50,51,54,55,57,59,62,63,68,69,70,71,72,73,75,76,78,81,86,87,88,89,90,92,103,105,106,107,110,111,113,117,119,120,136,137,138,139,140,141,142,143,144,145,159,161,162,164,166,167,168,169,177,178,185,186,198,199,200,201,202,204,205,212,213,214,221,223,224,226,233,234,235,253,254,255,256,257,258,260,261,262,263,284,285,286,287,288,289,290,291,292,294,313,314,315,316,317,318,319,320,321,323,331,332,342,343,347,352,366,367,368,369,370,371,372,373,374,385,404,405,406,407,408,409,410,412,413,414,422,423,424,425,427,428,429,430,431,432,434)

#read metadata file
CA.pops<-read.table("CA.n.c.s.L.metadata.txt", header=F)

#train<-read.table("list_of_trainset_individuals.txt", sep="\t", header=TRUE) #optional to reduce dataset down to include only individuals selected for training set
#geno.raw<-geno.raw[geno.raw$IID %in% train[,1],] #optional, will reduce dataset down to include only individuals selected for training set

#first column is family ID (this would be pop)
#POPID<-geno.raw[,1]

#second column is within-fam ID (this would be size )
#IID<-geno.raw[,2]

#remove first 6 cols as they are metadata
geno.in<-geno.raw[,7:ncol(geno.raw)]

#make all numeric
fmat<-as.matrix(sapply(geno.in, as.numeric))

pop.id <- CA.pops[,2] #make column 3 for 3pops, col 2 for 2 pops
#print(pop.id)

#size <- CA.pops[,4]
#print(size)

#impute missing data using RF
imputed<-rfImpute(fmat, as.factor(pop.id), iter=10, ntree=2000) #originally did 5 iter and 1000 trees (for coarse/fine)

imputedfeatures<-imputed[,-1]

done<-cbind(as.character(pop.id), imputedfeatures) #optional to write as table to save data in this format

#read metadata file
CA.pops<-read.table("CA.n.c.s.L.metadata.txt", header=F)

for (i in 5:6) {

  #run RF
  rf <- RRF(imputedfeatures, as.factor(pop.id), ntree=5000, mtry=(sqrt(ncol(imputedfeatures))), importance=TRUE, do.trace=100, nodesize=10, flagReg = 0) 
  
  impRF <- rf$importance #get variable importance    
  
  impRF <- impRF[,"MeanDecreaseGini"] #extract this specific importance metric
  
  imp <- impRF/(max(impRF)) #normalize the importance scores into [0,1]
  
  gamma <- 0.3   #A larger gamma often leads to fewer features. But, the quality of the features selected is quite stable for GRRF, i.e., different gammas can have similar accuracy performance (the accuracy of an ordinary RF using the feature subsets). See the paper for details.
  
  
  coefReg <- (1-gamma) + gamma*imp   # each variable has a coefficient, which depends on the importance score from the ordinary RF and the parameter: gamma                 
  
  #print(coefReg)
  
  #this is  RF regularization (and guided as we have coefReg)
  grrf <- RRF(imputedfeatures, as.factor(pop.id), ntree=5000, mtry=(sqrt(ncol(imputedfeatures))), importance=TRUE, do.trace=100, nodesize=10, flagReg=1, coefReg=coefReg)                 
  
  imp<-importance(grrf, type=1)
  imp<-as.data.frame(imp)
  names(imp)[1] ="rank"
  selected<-subset(imp, rank >0)
  
  #write.table(imp, file=c("GRRF.CA.n.c.s.L_3pop_imp5.txt"), row.names=TRUE, col.names=TRUE, quote=FALSE)
  #write.table(selected, file=c("GRRF.CA.n.c.s.L_3pop_sel_5.txt"), row.names=TRUE, col.names=TRUE, quote=FALSE)
  
  write.table(imp, file=paste0("GRRF2.CA.n.c.s_3pop_imp", i, ".txt"), row.names=TRUE, col.names=TRUE, quote=FALSE)
  write.table(selected, file=paste0("GRRF2.CA.n.c.s_3pop_sel", i, ".txt"), row.names=TRUE, col.names=TRUE, quote=FALSE)
  
}


#you now have a file suitable for RF!
#object 'POPID' can be used for 'y' for RF classification. Object 'new' is data frame or 'x'.
#example run of RF

#rf<-randomForest(imputedfeatures, pop.id, ntree=5000, mtry=(sqrt(ncol(imputedfeatures))), importance=TRUE, do.trace=100, nodesize=10)

#code used to obtain ranked list of loci above MDA = 0 

#select<-rf$importance
#MDA<-as.data.frame(select[,1])
#names(MDA)[1] ="rank"
#selected<-subset(MDA, rank >0)
#loci<-rownames(selected) 
#write.table(selected, file=c("RFrank2.txt"), row.names=TRUE, col.names=FALSE, quote=FALSE)




###### Script to identify outliers with GRRF

### E.S. Nielsen Jan 2023

## start with plink .raw file, from --recode A option recoding .tped file to have 0,1,2 represent different alleles
## rows are individuals, columns are loci
#First 6 columns are metadata, next there's genotypes (missing is NA)
#I changed the file from .raw to .txt


library(randomForest)
library(RRF)
library(dplyr)

#read input geno file
geno.raw<-read.table("CA_2_maf0.05_pctind0.5_maxdepth15_R2.pruned.A.bin.txt", header=TRUE)

#read metadata file, has population ID and size of individs
CA.pops<-read.table("CA.pop.id.txt", header=TRUE)

#remove first 6 cols as they are useless metadata
geno.in<-geno.raw[,7:ncol(geno.raw)]

#make all numeric and matrix
fmat<-as.matrix(sapply(geno.in, as.numeric))

pop.id <- CA.pops[,3]
#print(pop.id)

size <- CA.pops[,4]
#print(size)

#impute missing data using RF (should probably use more trees but it times out with all computer powers, but thinks its okay because I have bucketloads of snps)
imputed<-rfImpute(fmat, pop.id, iter=5, ntree=1000)

imputedfeatures<-imputed[,-1]

done<-cbind(as.character(pop.id), as.character(size), imputedfeatures) # format data to have pop & size predictor vars, then geno response vars)

write.table(done, file=c("GRRF.input.txt"), row.names=FALSE, col.names=TRUE, quote=FALSE) # write as table to save data in this format



# R script to run GRRF on imputed features input file (from GRRF.input.R)

library(randomForest)
library(RRF)
library(dplyr)

# From RF to GRRF to selected SNPS

rf.df <- read.table("GRRF.edit.txt", quote="\"", comment.char="")

pop.id <- rf.df[,1]
size <- rf.df[,2]
imputedfeatures<-rf.df[,3:ncol(rf.df)]

# Getting to GRRF
#this is  RF without regularization
rf <- RRF(imputedfeatures, as.factor(pop.id), ntree=5000, mtry=(sqrt(ncol(imputedfeatures))), importance=TRUE, do.trace=100, nodesize=10, flagReg = 0) 

impRF <- rf$importance #get variable importance    

impRF <- impRF[,"MeanDecreaseGini"] #extract this specific importance metric

imp <- impRF/(max(impRF)) #normalize the importance scores into [0,1]

gamma <- 0.3   #A larger gamma often leads to fewer features. But, the quality of the features selected is quite stable for GRRF, i.e., different gammas can have similar accuracy performance (the accuracy of an ordinary RF using the feature subsets). See the paper for details.

coefReg <- (1-gamma) + gamma*imp   # each variable has a coefficient, which depends on the importance score from the ordinary RF and the parameter: gamma                 

#this is  GRRF (regularization with flagreg=1, guided with coefReg)
grrf <- RRF(imputedfeatures, as.factor(pop.id), ntree=5000, mtry=(sqrt(ncol(imputedfeatures))), importance=TRUE, do.trace=100, nodesize=10, flagReg=1, coefReg=coefReg)                 

#get importance (need importance =TRUE in above steps to get both Mean Decrease in Accuracy & Mean Decrease Gini , type=1 below says we only want Mean Decrease in Accuracy ouptu)
imp<-importance(grrf, type=1)
names(imp)[1] ="rank"
#only keep SNPs with MDA greater than 0 (i.e. they have high importance in models)
selected<-subset(imp, rank >0)

write.table(imp, file=c("grrf.imp1.txt"), row.names=FALSE, col.names=TRUE, quote=FALSE) #print whole importance table
write.table(selected, file=c("grrf.sel_1.txt"), row.names=FALSE, col.names=TRUE, quote=FALSE) #print only selected snps in table


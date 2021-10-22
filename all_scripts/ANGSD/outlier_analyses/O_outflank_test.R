# This script runs OutFLANK on input generated from angsd conversion script
library(OutFLANK)

Hmin=0.2 #set minimum heterozygosity
FstMat=read.table("10_Rfiles/BMR_C_OutFLANKin.152.f.txt", header=T)#,nrows=1000)
OFresults=OutFLANK(FstMat, NumberOfSamples = 2, qthreshold = 0.05, Hmin = 0.1)
# OFresults=OutFLANK(FstMat,NumberOfSamples=5,RightTrimFraction=0.1,LeftTrimFraction=0.05,qthreshold=0.1,Hmin=Hmin)
OFresults$numberHighFstOutliers
OFresults$dfInferred
OFresults$FSTbar
OutFLANKResultsPlotter(OFresults,withOutlier=T,NoCorr=T,Hmin=Hmin,binwidth=0.005)

pdf("outflank.dist.test.pdf")
OutFLANKResultsPlotter(OFresults, withOutliers = TRUE,
                       NoCorr = TRUE, Hmin = 0.2, binwidth = 0.001, Zoom =
                         FALSE, RightZoomFraction = 0.05, titletext = NULL)

dev.off()
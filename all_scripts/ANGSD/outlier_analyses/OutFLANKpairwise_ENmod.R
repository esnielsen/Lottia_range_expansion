#usage:
# Rscript ~/scripts/OutFLANKpairwise_ENmod.R POP1.mafs POP2.mafs POP1_POP2_OutFLANKin.txt
#Script modified by Aryn Wilder

###Edited 6.8.21 Erica
##This version requires the 8 column maf output from ANGSD


FstNoCorr=function(mafsi)
{
  n_pops = (length(mafsi)-2)/5  # Change 5 to 6 for the 8 column format
  sample_sizes = as.numeric(c(mafsi[1:n_pops*5+2])) # Change 5 to 6 for the 8 column format
  n_ave = mean(sample_sizes)
  r = n_pops
  n_c = (n_pops * n_ave - sum(sample_sizes^2)/(n_pops * n_ave))/(n_pops - 
                                                                   1)
  p_freqs = as.numeric(c(mafsi[5*(1:n_pops)+1]))# Change 5 to 6 for the 8 column format
  p_ave = sum(sample_sizes * p_freqs)/(n_ave * n_pops)
  s2 = sum(sample_sizes * (p_freqs - p_ave)^2)/((n_pops - 1) * 
                                                  n_ave)
  # if (s2 == 0) {#not sure why this is here!
  # return(1)
  # break
  # }
  h_freqs = 2*p_freqs*(1-p_freqs) #Using expected H rather than observed
  h_ave = sum(sample_sizes * h_freqs)/(n_ave * n_pops)
  a <- n_ave/n_c * (s2)
  b <- (p_ave * (1 - p_ave) - (r - 1)/r * s2 - (2 * n_ave)/(4 * 
                                                              n_ave) * h_ave)
  c <- 1/2 * h_ave
  He <- 1 - sum(p_ave^2, (1 - p_ave)^2)
  FST <- a/(a + b + c)
  return(list(FSTNoCorr = FST, T1NoCorr = a, T2NoCorr = (a + 
                                                           b + c),meanAlleleFreq = p_ave))
}

FstCorr=function(mafsi) 
{
  n_pops = (length(mafsi)-2)/5 # Change to 6
  sample_sizes = as.numeric(c(mafsi[1:n_pops*5+2])) # Change to 6
  n_ave = mean(sample_sizes)
  r = n_pops
  n_c = (n_pops * n_ave - sum(sample_sizes^2)/(n_pops * n_ave))/(n_pops - 
                                                                   1)
  p_freqs = as.numeric(c(mafsi[5*(1:n_pops)+1])) # Change to 6
  p_ave = sum(sample_sizes * p_freqs)/(n_ave * n_pops)
  s2 = sum(sample_sizes * (p_freqs - p_ave)^2)/((n_pops - 1) * 
                                                  n_ave)
  # if (s2 == 0) {#not sure why this is here!
  # return(1)
  # break
  # }
  h_freqs = 2*p_freqs*(1-p_freqs)
  h_ave = sum(sample_sizes * h_freqs)/(n_ave * n_pops)
  a <- n_ave/n_c * (s2 - 1/(n_ave - 1) * (p_ave * (1 - p_ave) - ((r - 1)/r) * s2 - (1/4) * h_ave))
  b <- n_ave/(n_ave - 1) * (p_ave * (1 - p_ave) - (r - 1)/r * 
                              s2 - (2 * n_ave - 1)/(4 * n_ave) * h_ave)
  c <- 1/2 * h_ave
  He <- 1 - sum(p_ave^2, (1 - p_ave)^2)
  FST <- a/(a + b + c)
  return(list(He = He, FST = FST, T1 = a, T2 = (a + b + c)))
}



MakeFSTMat=function(mafs){
  nloci=nrow(mafs)
  FSTmat=matrix(NA,nrow=nloci,ncol=8)
  for (i in 1:nloci){
    FSTmat[i,]=cbind(unlist(FstCorr(mafs[i,])),unlist(FstNoCorr(mafs[i,])))
    if (i%%10000==0){print(paste(i, "done of", nloci))}
  }
  outTemp=as.data.frame(FSTmat)
  outTemp=cbind(paste(mafs[,1],mafs[,2],sep=':'),outTemp)
  colnames(outTemp)=c("LocusName", "He", "FST", "T1", "T2","FSTNoCorr", "T1NoCorr", "T2NoCorr", "meanAlleleFreq")
  return(outTemp)
}

##Use this block for trying interactively
# setwd("~/Documents/MigratoryBirds/ANHU/outflank/")
# args <- c("VAL20K.mafs","WAS20K.mafs")
# mafsm=read.table(args[1],header=T)
#  for (i in 2:(length(args))){
#  	mafs=read.table(args[i],header=T)
#  	mafsm=merge(mafsm,mafs,by=c('chromo','position'))
#  }

args <- commandArgs(trailingOnly = TRUE)
mafsm=read.table(args[1],header=T)
for (i in 2:(length(args)-1)){
  mafs=read.table(args[i],header=T)
  mafsm=merge(mafsm,mafs,by=c('chromo','position'))
}

FST=MakeFSTMat(mafsm)
write.table(FST,file=args[length(args)],sep='\t',row.names=F)


# Script to identify surfing alleles with AFC
# following Pereira et al. 2018


# load the file: INPUT file should be in the following format (it Works

# better without header as it allows the for routine to be used to
# automatically explore your data): 
#POP Latitude freq_Allele1 freq_Allele2 ... freq_Allelen
# example
# Pop1 37 0.5 0.1 

setwd("~/Desktop/PD_stuffies/R_work/AFC")

#load data to transpose
ALL_2.rda.geno <- read.delim("~/Desktop/PD_stuffies/R_work/AFC/ALL_2.rda.geno.txt")
af.t <-as.data.frame(t(ALL_2.rda.geno))

#write.table(af.t, "af.t.txt", quote=FALSE, sep=" ", row.names=FALSE)

af.t.n<-af.t[2:20,]

#Load the data
#md<-read.data("pop.meta.txt", header =FALSE )
pop.meta <- read.delim2("~/Desktop/PD_stuffies/R_work/AFC/pop.meta.txt", header=FALSE)

#add meta to AF df
al<-cbind(pop.meta,af.t.n)

#check that it's correct
str(al)

al.n<-lapply(al[,2:703927],as.numeric)
al.n<-as.data.frame(al.n)
al<-cbind(pop.meta[,1],al.n)

# #load a label file
# #the label file should contain a single collum with the variable names (ie. SNP names)
label <-read.csv("snp.labs.txt", header=FALSE, stringsAsFactors=FALSE)


nCollumns<-length(al)
listNames<-list ()


lmp<-function (modelobject) {
  if (class(modelobject) != "lm") stop("Not an object of class 'lm' ")
  f <-summary(modelobject)$fstatistic
  p <-pf(f[1],f[2],f[3],lower.tail=F)
  attributes(p) <-NULL
  return(p)
}

pVals<-list()
rSqs<-list()
allName<-list()
minAllFreq<-list()
maxAllFreq<-list()
dFreq<-list()

for (i in 1:(nCollumns-2)) {
  df<-data.frame()
  data <-data.frame(al[,2],al[,i+2])
  windowWidth<-0.5
  position <-min(al[,2])
  posList<-list()
  posAvg<-list()
  
  if (length(data[data[,2]>0,2]) <=1) {
    
    next 
  }
  
  
  while (TRUE) {
    d <-data[data[,1]<position+windowWidth&data[,1]>position-windowWidth,]
    
    posList<-append (posList,position)
    posAvg<-append (posAvg,mean(d[,2]))
    position <-position +1
    
    if (position >max(al[,2])+1) {
      break()
    }
  }
}

  lLA<-list("Lat" =posList,"Avg"=posAvg)
  df<-data.frame(matrix(unlist(lLA), nrow=length(posList), byrow=F))
  alleleName<-label[i+2, ]
  savePath<-paste ("width1Slide1PDF/",alleleName,'.pdf', sep="")
  
  
  
  coordinate <-df[,1]
  value <-df[,2]
  try(lmfit<-lm(value ~coordinate))
  pVal<-lmp(lmfit)
  rSq<-summary(lmfit)$r.squared
  
  pVals<-append(pVals,pVal)
  rSqs<-append (rSqs, rSq)
  allName<-append(allName, alleleName)
  minAllFreq<-append(minAllFreq,min(value))
  maxAllFreq<-append(maxAllFreq,max(value))
  dFreq<-append(dFreq,max(value)-min(value))
  
  
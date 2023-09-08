## Getting average pairwise FSTS
setwd("~/Desktop/PD_stuffies/R_work/fsts")


filelist = list.files(pattern = "*.slidingwindow")

#list_of_files <- list.files(path = ".", recursive = TRUE,
#                            pattern = "\\.slidingwindow$", 
 #                           full.names = TRUE)

datalist = lapply(filelist, function(x)read.table(x, header=T, row.names = NULL))

#datafr = do.call("rbind", datalist) 

#lapply(datalist, function(x) {
 # colSums[x]} )

for (x in datalist) {
  avg <- mean(x$Nsites)
  
  print(avg)
}


### plot Fst matrix
fsts <- read.csv("~/Desktop/PD_stuffies/R_work/fsts/fsts.csv", sep=";", row.names = 1) 

#fsts <- read.csv("~/Desktop/PD_stuffies/R_work/fsts/NEW_ip/fst.new.IP.csv", sep=";", row.names = 1) 

fst.m <- as.matrix(fsts)
mh <- pracma::fliplr(fst.m)
mv <- pracma::flipud(mh)

# Get upper triangle of the correlation matrix
get_upper_tri <- function(cormat){
  cormat[lower.tri(cormat)]<- NA
  return(cormat)
}

upper_tri <- get_upper_tri(fst.m)


# Heatmap w viridis cols
library(pheatmap)
library(viridis)

myColor <- viridis::viridis(20)
pheatmap(mv, display_numbers = F, cluster_rows=F, cluster_cols=F, color = myColor)

#heatmap with normal colors
pheatmap(fst.m, display_numbers = F, cluster_rows=F, cluster_cols=F)


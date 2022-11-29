####################### Env Vars for Lottia GEAs #######################

LIB <- c("rgbif", "ggplot2", "gridExtra", "knitr", "raster", 
         "ade4", "rworldmap", "maptools", "rasterVis", "rgdal","rgeos", "sdmpredictors")
#for(i in LIB) { install.packages(i, repos="http://ftp.sun.ac.za/ftp/pub/mirrors/cran.za.r/") ; library(i, character.only=T) }
for(i in LIB) { library(i, character.only=T) }

library(usdm)
library(psych)    
library(vegan)
library(adegenet)
library(dplyr)
library(fmsb)
library(gsl)
library(raster)
library(sdmpredictors)
library(adegenet)
library(qvalue)
library(tidyverse)

######################## DOWNLOAD PREDICTOR VARIABLES

#download atmospheric features
#bio1= Annual Mean Temperature
#bio5= Max Temperature of Warmest Month
#bio6= Min Temperature of Coldest Month
#bio7= Air Temperature Range
a.contp <- load_layers( layercodes = c("WC_bio5", "WC_bio6", "WC_bio1", "WC_bio7") , equalarea=FALSE, rasterstack=TRUE)

#download marine features
o.contp <- load_layers( layercodes = c("BO22_temprange_ss", "BO22_tempmean_ss", "BO22_salinitymean_ss", "BO21_salinityrange_ss", "BO22_ppmean_ss", "BO22_dissoxmean_ss", "BO22_ph", "BO22_cloudmean", "BO22_chlomean_ss", "BO22_curvelmean_ss", "BO22_damean") , equalarea=FALSE, rasterstack=TRUE)

#resample because air and ocean vars have different resolution/extent
a<-extent(-180, 180, -90, 90) #input layer extent
o<-extent(-180, 180, -90, 90)
extent_list<-list(a, o)
extent_list<-lapply(extent_list, as.matrix)
matrix_extent<-matrix(unlist(extent_list), ncol=length(extent_list))
rownames(matrix_extent)<-c("xmin", "ymin", "xmax", "ymax")
best_extent<-extent(min(matrix_extent[1,]), max(matrix_extent[3,]), min(matrix_extent[2,]), max(matrix_extent[4,]))
ranges<-apply(as.matrix(best_extent), 1, diff)
reso<-res(a.contp) #choose layer you want to keep resolution
nrow_ncol<-ranges/reso
s2<-raster(best_extent, nrows=nrow_ncol[2], ncols=nrow_ncol[1], crs=a.contp@crs) #choose layer crs you want to keep
a.c.r.2 <-resample(a.contp, s2, method="ngb") #resample by s2
o.c.r.2 <-resample(o.contp, s2, method="ngb") #resample by s2
contemp.r.2=stack(a.c.r.2, o.c.r.2) #stack resampled layers

#Crop layers to US West Coast extent
WC.ext <- extent(-130, -107, 20, 50)
env.curr.c <- crop(contemp.r.2, WC.ext)

# Load sample site coords (lat long)
lat_longs <- read_excel("lat.longs.xlsx", col_types = c("text", "numeric", "numeric"))

# Extract env values for our sample locations:

envdata <- raster::extract(x=env.curr.c, y=cbind(lat_longs$x, lat_longs$y))
data<- cbind2 (x=lat_longs, y=envdata)

env.curr.c <- stack(env.curr.c)

#Extract values when there's NAs (sometimes coastal points won't align with ocean or air raster layers, so we extract nearest possible point from raster)
sample_raster_NA <- function(r, xy){
  apply(X = xy, MARGIN = 1, 
        FUN = function(xy) r@data@values[which.min(replace(distanceFromPoints(r, xy), is.na(r), NA))])
  
}

test<-lapply(env.curr.c@layers, function(a_layer) sample_raster_NA(a_layer, cbind(lat_longs$x, lat_longs$y)))
envdat.whole <-as.data.frame(do.call(cbind, test))
data<- cbind2 (x=lat_longs, y=envdat.whole)

#Get env var correlations (want to exclude any of those >0.7)
pairs.panels(envdata.whole, scale=T)

#Get variance inflation factors (want to exclude any >10, or >5 if conservative)
vif(env.curr.c)

#Select variables which are meaningful and non-correlated
VARSEL <- c("BO22_damean", "BO22_tempmean_ss", "BO22_ph")
contemp.mar.3vars <- stack(subset(env.curr.c, VARSEL))

#Run vif again
vif(contemp.mar.3vars)

Variables      VIF
1      BO22_damean 1.513805
2 BO22_tempmean_ss 2.241261
3          BO22_ph 2.456132

test<-lapply(contemp.mar.3vars@layers, function(a_layer) sample_raster_NA(a_layer, cbind(lat_longs$x, lat_longs$y)))
envdat.3 <-as.data.frame(do.call(cbind, test))
colnames(envdat.3) <- c("BO22_damean","BO22_tempmean_ss","BO22_ph")

writeRaster(contemp.mar.3vars, "GEA.env.3vars.tif", format="GTiff", overwrite=TRUE)
write.table(envdat.3, "GEA.env.per.site.txt", quote=FALSE, sep=" ", row.names=FALSE)


# plotting PAI & SVG

library(raster)
library(ggplot2)
library(rgdal)
library(rgeos)
library(sf)
library(tmap)
library(viridis)

setwd("~/Desktop/PD_stuffies/R_work/pai_svg")

#get background map
setwd("~/Desktop/PD_stuffies/IBD")
NA_shp <-readOGR("NA.line.shp")

#crop map
CA.ext <- extent(-130, -107, 20, 43)
NA_c <- crop(NA_shp, CA.ext)

env.xy.NEW <- read.delim("env.xy.NEW.txt", comment.char="#")

xy.coords<-env.xy.NEW[,5:6]

lottia.OUTS.pai.svg <- read.delim("~/Desktop/PD_stuffies/R_work/pai_svg/lottia.OUTS.pai.svg.txt")

p.s.xy<-cbind(xy.coords,lottia.OUTS.pai.svg)
p.s.sf <- st_as_sf(p.s.xy, coords = c("Y", "X"), crs = "+proj=longlat +datum=WGS84 +no_defs")

vir.col<-viridis(19)

t.PAI <- tm_shape(NA_c) + tm_lines(col="grey") + tm_shape(p.s.sf)+
  tm_dots("PAI", palette = vir.col, style="cat", size = 0.3)+tm_layout(legend.outside = TRUE)

pdf("PAI.map.pdf")
t.PAI
dev.off()

t.SVG <- tm_shape(NA_c) + tm_lines(col="grey") + tm_shape(p.s.sf)+
  tm_dots("SVG", palette = vir.col, style="cat", size = 0.3)+tm_layout(legend.outside = TRUE)

pdf("SVG.map.pdf")
t.SVG
dev.off()

### Code to map output of GAMs onto actual coastline

## NB: the prediction df is saved in the shp.files folder!!!
setwd("~/Desktop/PD_stuffies/shp.files")

library(rgdal)
library(mgcv)
library(mgcViz)
library(gratia)

#import US shapefile

#map.buff <- readOGR("us.coast.buff.2.shp")
map.buff <- readOGR("ca.coast.buff.2.shp")

#crop to CA
#CA.ext <- extent(-130, -107, 20, 50)
#ca.map.b <- crop(map.buff, CA.ext)


#First we'll create gridded data
#predict_richess = expand.grid(
 # Latitude= seq(min(LG_count_plot_mpa_F$Latitude), 
  #              max(LG_count_plot_mpa_F$Latitude),
   #             length=65),
  #Longitude = seq(min(LG_count_plot_mpa_F$Longitude),
   #               max(LG_count_plot_mpa_F$Longitude),
    #              length=65),
#  Year = seq(1996,2018,by=2)
#)


#ca_map_all_pts <- read_excel("ca.map.all.pts.xlsx", 
                             +     col_types = c("numeric", "numeric", "numeric"))

# This now selects only that data that falls within border
#predict_richess = predict_richess[with(predict_richess, 
#                                       inSide(ca_map_all_pts, Latitude,Longitude)),]

#predict_count$model_fit = predict(count_ti_re_model.xy.only,
#                                    predict_count,type = "response")


setwd("~/Desktop/PD_stuffies/SDMS")
MyBinLG_B_sst_curr <- raster::stack("Lottia/proj_sst.curr.BIO/individual_projections/Lottia_EMcaByTSS_mergedAlgo_mergedRun_mergedData.img")
b <- buffer(MyBinLG_B_curr$Layer_1, width=15000) 
ca.map.b <- crop(b, map.buff)
CA.ext <- extent(-130, -107, 20, 45)
ca.map.b <- crop(ca.map.b, CA.ext)
#ca.map.b.2 <- aggregate(ca.map.b, fact=2)
ca.coast.df <- as.data.frame(ca.map.b, xy=TRUE)
ca.coast.line <- na.omit(ca.coast.df)
write.table(ca.coast.line, file="ca.coast.line.15000.txt", sep="\t", quote = FALSE)

names(predict_count_coast_M)[1] <- 'longitude'
names(predict_count_coast_M)[2] <- 'latitude'

#count_ti_re_model.xy.only = gam(count ~ size_bin +
#                               te(latitude, longitude, year, d=c(2,1), by=size_bin) +
#                               offset(log(plots_sampled)),
#                               data=LG_count_plot_mpa_F, family=nb(link="log"), method="REML")

#why I chose to predict with 'link': https://stackoverflow.com/questions/60161344/is-there-a-way-to-produce-predict-gam-type-terms-values-that-are-not-cen

#predict_count_coast_S$model_fit = predict(count_ti_re_model.xy.only,
#                                          predict_count_coast_S,type = "link")

#"link" = produces predictions on the scale of the additive predictors
predict_count_coast_L$model_fit = predict(count_ti_re_model.xy.I,
                                          predict_count_coast_L,type = "link", 
                                          exclude = "te(vo, uo, year, d=c(2,1), by=size_bin)")

#predict_count_coast_S$model_fit = predict(count_ti_re_model.xy.only, predict_count_coast_S,
#type="response",
#terms="te(latitude, longitude, year, d=c(2,1), by=size_bin)")

ggplot(aes(longitude, latitude, fill= model_fit),
       data=predict_count_coast_L)+
  geom_tile()+
  facet_wrap(~year,nrow=3)+
  scale_fill_viridis("count")+
  ggtitle("large individuals")+
  theme_bw(10)

## To plot rate of change (over 1 year intervals)
## The code below isn't wanting to work now, but I can just predict year ahead, then subtract model_fit T0 from model_fit T1 to get change in count per year
predict_count_coast$model_change =predict(count_ti_re_model.xy.only,
                                          predict_count_coast%>%mutate(year=year+1),
                                          type = "response") -
  predict_count_coast$model_fit 


ggplot(aes(Longitude, Latitude, fill= model_change),
       data=predict_count_coast)+
  geom_tile()+
  scale_fill_gradient("Rate of change\n(species per year)")+
  theme_bw(10)


## Trying to break up years as facet(year) not giving proper color fills
predict_count_95_01 <- dplyr::filter(predict_count_coast_S, year <= 2001)
names(predict_count_95_01)[1] <- 'longitude'
names(predict_count_95_01)[2] <- 'latitude'

predict_count_95_01$model_fit = predict(count_ti_re_model.xy.only,
                                        predict_count_95_01,type = "response")



LG_count_plot_mpa_F$base_resid = rqresiduals(count_ti_re_model.xy.only)

ggplot(aes(longitude, latitude),
       data= LG_count_plot_mpa_F %>% filter(year%%3==0))+ #only look at every 6th year
  geom_point(aes(color=base_resid))+
  geom_polygon(data=map.buff,fill=NA, col="black")+
  scale_color_viridis()+
  facet_wrap(~year)+
  theme_bw()

## To get plots of input counts 
ggplot(aes(longitude, latitude),
     data= LG_count_plot_mpa_F %>% filter(year%%3==0) %>% filter(size_bin=="small"))+ #only look at every 3rd year
   geom_point(aes(color=count))+
   scale_color_viridis()+
   facet_wrap(~year)+
   ggtitle("small individuals")+
   theme_bw()

## This is R function to get residuals
library(statmod) #This has functions for randomized quantile residuals
rqresiduals = function (gam.obj) {
  if(!"gam" %in% attr(gam.obj,"class")){
    stop('"gam.obj has to be of class "gam"')
  }
  if (!grepl("^Tweedie|^Negative Binomial|^poisson|^binomial|^gaussian|^Gamma|^inverse.gaussian",
             gam.obj$family$family)){
    stop(paste("family " , gam.obj$family$family, 
               " is not currently supported by the statmod library, 
                 and any randomized quantile residuals would be inaccurate.",
               sep=""))
  }
  if (grepl("^Tweedie", gam.obj$family$family)) {
    if (is.null(environment(gam.obj$family$variance)$p)) {
      p.val <- gam.obj$family$getTheta(TRUE)
      environment(gam.obj$family$variance)$p <- p.val
    }
    qres <- qres.tweedie(gam.obj)
  }
  else if (grepl("^Negative Binomial", gam.obj$family$family)) {
    if ("extended.family" %in% class(gam.obj$family)) {
      gam.obj$theta <- gam.obj$family$getTheta(TRUE)
    }
    else {
      gam.obj$theta <- gam.obj$family$getTheta()
    }
    qres <- qres.nbinom(gam.obj)
  }
  else {
    qres <- qresid(gam.obj)
  }
  return(qres)
}


#To plot residuals
LG_count_plot_mpa_F$base_resid = rqresiduals(count_ti_re_model.xy.only)

ggplot(aes(longitude, latitude),
       data= LG_count_plot_mpa_F %>% filter(year%%3==0))+ #only look at every 6th year
 geom_point(aes(color=base_resid))+
 scale_color_viridis()+
  facet_wrap(~year)+
  theme_bw()

#Areas where resids are higher, it means there's higher than expected counts in that area (so model is missing what's causing that)


## To plot with CA map underneath:

library(maps)
library(mapdata)


states <- map_data("state")

west_coast <- subset(states, region %in% c("california"))

g<-ggplot(data = west_coast) + geom_polygon(aes(x = long, y = lat, group = group), fill = "lightgrey", color = "black") 

gg  <- g + geom_tile(aes(longitude, latitude, fill= model_fit),
       data=predict_count_coast_S)+
  facet_wrap(~year,nrow=3)+
  scale_fill_viridis("count")+  theme_bw(10)

  geom_polygon(aes(x = long, y = lat, group = group),data = west_coast, fill = "lightgrey", color = "black")+
  theme_bw(10)



gg  <- g + geom_tile(aes(longitude, latitude, fill= count),
                      data=LG_count_plot_mpa_F)+
  facet_wrap(~year,nrow=3)+
  scale_fill_viridis("count")+
  theme_bw(10)



### Trying to convert loglink back to normal values
pred <- predict(count_ti_re_model.xy.I, predict_count_coast_L,type = "link", se.fit = TRUE, exclude = "te(vo, uo, year, d=c(2,1), by=size_bin)")

pred <- as.data.frame(pred)

ilink <- family(count_ti_re_model.xy.I)$linkinv
pred <- transform(pred,
                  Fitted = ilink(fit))


ndata <- bind_cols(predict_count_coast_S, setNames(as_tibble(predict(count_ti_re_model.xy.I, predict_count_coast_S, type = "response", se.fit = TRUE)[1:2]),
                                   c('fit_link','se_link')))


#################################################
## To map on log scale (as in STACKEXCHANGE post)
#small individs
predict_count_coast_S <- read_excel("Desktop/PD_stuffies/shp.files/predict_count_coast_S.xlsx", 
                                  col_types = c("numeric", "numeric", "numeric", 
                                  "text", "numeric", "numeric", "numeric"))

model_fit_terms = predict(count_ti_re_model.xy.I,
                           predict_count_coast_S, type = "terms")
model_fit_terms <-as.data.frame(model_fit_terms)
predict_count_coast_S$model_fit = model_fit_terms$`te(latitude,longitude,year):size_binsmall`


pdf("LG.small.log.abund.maps.95.19.pdf")
ggplot(aes(longitude, latitude, fill= model_fit),
       data=predict_count_coast_S)+
  geom_tile()+
  facet_wrap(~year,nrow=3)+
  scale_fill_viridis("count")+
  ggtitle("small individuals")+
  theme_bw(10)
dev.off()

#medium individs
predict_count_coast_M <- read_excel("Desktop/PD_stuffies/shp.files/predict_count_coast_M.xlsx", 
                                    col_types = c("numeric", "numeric", "numeric", 
                                                  "text", "numeric", "numeric", "numeric"))

model_fit_terms = predict(count_ti_re_model.xy.I,
                          predict_count_coast_M, type = "terms")
model_fit_terms <-as.data.frame(model_fit_terms)
predict_count_coast_M$model_fit = model_fit_terms$`te(latitude,longitude,year):size_binmed`


pdf("LG.med.log.abund.maps.95.19.pdf")
ggplot(aes(longitude, latitude, fill= model_fit),
       data=predict_count_coast_M)+
  geom_tile()+
  facet_wrap(~year,nrow=3)+
  scale_fill_viridis("count")+
  ggtitle("medium individuals")+
  theme_bw(10)
dev.off()

#large individuals
predict_count_coast_L <- read_excel("Desktop/PD_stuffies/shp.files/predict_count_coast_L.xlsx", 
                                    col_types = c("numeric", "numeric", "numeric", 
                                                  "text", "numeric", "numeric", "numeric"))

model_fit_terms = predict(count_ti_re_model.xy.I,
                          predict_count_coast_L, type = "terms")
model_fit_terms <-as.data.frame(model_fit_terms)
predict_count_coast_L$model_fit = model_fit_terms$`te(latitude,longitude,year):size_binlarge`


pdf("LG.large.log.abund.maps.95.19.pdf")
ggplot(aes(longitude, latitude, fill= model_fit),
       data=predict_count_coast_L)+
  geom_tile()+
  facet_wrap(~year,nrow=3)+
  scale_fill_viridis("count")+
  ggtitle("large individuals")+
  theme_bw(10)
dev.off()


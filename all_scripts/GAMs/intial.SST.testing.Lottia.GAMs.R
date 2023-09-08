### R script to run GAMs ###

#not sure if family is poisson or tw here
m1 <- gam(Counts~SizeClass + s(x,y) + s(Temp), family="poisson"/"tw", data=gam_data)
m2 <- gam(Counts~SizeClass + s(x,y) + s(Temp)+ s(nMonth, bs = "cc", k = 11) + s(Year), data=gam_data)
m3 <- gam(Counts~SizeClass + s(x,y) + Site + s(Temp)+ s(nMonth, bs = "cc", k = 11) + s(Year), data=gam_data)


anova(m1 ,m2, test='Chi')

plot(Temp,fitted(m1))

#use binomial family for % cover & family = gaussian for density.per.m2
m1 <- gam(Abund ~ s(x,y) + s(Temp), + s(Time, bs= "gp"), family="binomial", data=gam_data)

#variable selection
m1 <- gam(Abund ~ s(Temp) + s(x,y) + s(salinity) + s(current_vel), data=data, family=gaussian, select=TRUE)

#interaction
m1 <- gam(Abund ~ s(lat, Temp, bs="fs"), data=data)

m1 <- gam(Abund ~ te(Year bs="gp"), + ti(Year, site, bs=c("gp", "re")), data=data)

#NB: probs need to do something like "+offset(area_sampled)" !!
          
### To get temp data per site per year

#open raster layers
library(raster)
setwd("~/Desktop/PD_stuffies/SDMS")


sst.12 <- 'sst.12.CMEMs.tif'
sst.12=stack(sst.12)

sst.13 <- 'sst.13.CMEMs.tif'
sst.13=stack(sst.13)

sst.14 <- 'sst.14.CMEMs.tif'
sst.14=stack(sst.14)

sst.15 <- 'sst.15.CMEMs.tif'
sst.15=stack(sst.15)

sst.16 <- 'sst.16.CMEMs.tif'
sst.16=stack(sst.16)

sst.17 <- 'sst.17.CMEMs.tif'
sst.17=stack(sst.17)

sst.18 <- 'sst.18.CMEMs.tif'
sst.18=stack(sst.18)

sst.19 <- 'sst.19.CMEMs.tif'
sst.19=stack(sst.19)

#stack rasters
sst.12.19 <- stack(sst.12, sst.13, sst.14, sst.15, sst.16, sst.17, sst.18, sst.19)

#open PISCO data table
LG_per_cover <- read_excel("~/Desktop/PD_stuffies/demoography/erica_nielsen_cbs_lottia_per_cover_density.xlsx", sheet = "point_contact_per_cover")

#extract temp by lat long
LG.xy.sp <- LG_per_cover
coordinates(LG.xy.sp) <- ~ longitude + latitude
wgs1984.proj <- CRS("+proj=longlat +ellps=WGS84 +datum=WGS84 +no_defs")
proj4string(sst.12.19) <- wgs1984.proj
proj4string(LG.xy.sp) <- wgs1984.proj
sst.points <- extract(sst.12.19, LG.xy.sp)

sst.pts <- as.data.frame(sst.points)
gam.data<- cbind2 (x=LG_per_cover, y=sst.pts)
gam.data <- na.omit(gam.data) 


#### Filter density df to only retain sites with 4 or more observations
density <- read_excel("~/Desktop/PD_stuffies/demoography/erica_nielsen_cbs_lottia_per_cover_density.xlsx", sheet = "quadrat_summary")
tt <- table(density$intertidal_sitename)
density2 <- subset(density, intertidal_sitename %in% names(tt[tt > 4]))

dens.2012.all <- density %>%  filter(year == 2012) 
dens.2013.all <- density %>%  filter(year == 2013) 
dens.2014.all <- density %>%  filter(year == 2014) 
dens.2015.all <- density %>%  filter(year == 2015) 
dens.2016.all <- density %>%  filter(year == 2016) 
dens.2017.all <- density %>%  filter(year == 2017) 
dens.2018.all <- density %>%  filter(year == 2018) 
dens.2019.all <- density %>%  filter(year == 2019) 


y <- dens.2012.all$density_per_m2
x <- dens.2012.all$latitude
plot(x, y, main = "2012")

y <- dens.2013.all$density_per_m2
x <- dens.2013.all$latitude
plot(x, y, main = "2013")

y <- dens.2017.all$density_per_m2
x <- dens.2017.all$latitude
plot(x, y, main = "2017")

y <- dens.2018.all$density_per_m2
x <- dens.2018.all$latitude
plot(x, y, main = "2018")


### Running test models
#originally tried : m2 <- gam(density_per_m2 ~ intertidal_sitename + s(latitude) + s(year), family="gaussian", data=density2)
#but got error: rror in smooth.construct.tp.smooth.spec(object, dk$data, dk$knots) : 
#A term has fewer unique covariate combinations than specified maximum degrees of freedom

m1 <- gam(density_per_m2 ~ intertidal_sitename + s(latitude), family="gaussian", data=density)

m2 <- gam(density_per_m2 ~ intertidal_sitename + s(latitude) + s(year), family="gaussian", data=density)


m1 <- gam(density_per_m2 ~ year + s(latitude), family="gaussian", data=density)

m2 <- gam(density_per_m2 ~ s(year) + s(latitude), family="gaussian", data=density)
m3 <- gam(density_per_m2 ~ s(year, by=intertidal_sitename) + s(latitude), family="gaussian", data=density)

m3 <- gam(density_per_m2 ~ s(latitude, year, bs="fs"), data=density)

b <- gam(density_per_m2 ~ s(latitude, year), data=density)


ggplot(density2, aes(x = year, y = density_per_m2, colour = intertidal_sitename)) +
 geom_point() +
  geom_smooth(method = 'loess', se = FALSE) +
  theme(legend.position = 'top')


density2$intertidal_sitename <- as.factor(density2$intertidal_sitename)

m <- gam(density_per_m2 ~ latitude + s(year, by = latitude), data = density2)

m <- gam(density_per_m2 ~ intertidal_sitename + s(year, by = intertidal_sitename), data = density2)
#Error in gam(density_per_m2 ~ intertidal_sitename + s(year, by = intertidal_sitename),  : 
 #              Model has more coefficients than data


##Getting temp to match up with year
LG.xy.sp <- dens.2012.all
coordinates(LG.xy.sp) <- ~ longitude + latitude
proj4string(sst.12) <- wgs1984.proj
proj4string(LG.xy.sp) <- wgs1984.proj
sst.pts.12 <- extract(sst.12, LG.xy.sp)
sst.pts.12 <- as.data.frame(sst.pts.12)
gam.data.12 <- cbind2 (x=dens.2012.all, y=sst.pts.12)
gam.12 <- as.data.frame(gam.data.12)
gam.data.12 <- na.omit(gam.data.12)


LG.xy.sp <- dens.2013.all
coordinates(LG.xy.sp) <- ~ longitude + latitude
proj4string(sst.13) <- wgs1984.proj
proj4string(LG.xy.sp) <- wgs1984.proj
sst.pts.13 <- extract(sst.13, LG.xy.sp)
sst.pts.13 <- as.data.frame(sst.pts.13)
gam.data.13 <- cbind2 (x=dens.2013.all, y=sst.pts.13)
gam.13 <- as.data.frame(gam.data.13)
gam.data.13 <- na.omit(gam.data.13)


LG.xy.sp <- dens.2014.all
coordinates(LG.xy.sp) <- ~ longitude + latitude
proj4string(sst.14) <- wgs1984.proj
proj4string(LG.xy.sp) <- wgs1984.proj
sst.pts.14 <- extract(sst.14, LG.xy.sp)
sst.pts.14 <- as.data.frame(sst.pts.14)
gam.data.14 <- cbind2 (x=dens.2014.all, y=sst.pts.14)
gam.14 <- as.data.frame(gam.data.14)
gam.data.14 <- na.omit(gam.data.14)

LG.xy.sp <- dens.2015.all
coordinates(LG.xy.sp) <- ~ longitude + latitude
proj4string(sst.15) <- wgs1984.proj
proj4string(LG.xy.sp) <- wgs1984.proj
sst.pts.15 <- extract(sst.15, LG.xy.sp)
sst.pts.15 <- as.data.frame(sst.pts.15)
gam.data.15 <- cbind2 (x=dens.2015.all, y=sst.pts.15)
gam.15 <- as.data.frame(gam.data.15)
gam.data.15 <- na.omit(gam.data.15)


LG.xy.sp <- dens.2016.all
coordinates(LG.xy.sp) <- ~ longitude + latitude
proj4string(sst.16) <- wgs1984.proj
proj4string(LG.xy.sp) <- wgs1984.proj
sst.pts.16 <- extract(sst.16, LG.xy.sp)
sst.pts.16 <- as.data.frame(sst.pts.16)
gam.data.16 <- cbind2 (x=dens.2016.all, y=sst.pts.16)
gam.16 <- as.data.frame(gam.data.16)
gam.data.16 <- na.omit(gam.data.16)


LG.xy.sp <- dens.2017.all
coordinates(LG.xy.sp) <- ~ longitude + latitude
proj4string(sst.17) <- wgs1984.proj
proj4string(LG.xy.sp) <- wgs1984.proj
sst.pts.17 <- extract(sst.17, LG.xy.sp)
sst.pts.17 <- as.data.frame(sst.pts.17)
gam.data.17 <- cbind2 (x=dens.2017.all, y=sst.pts.17)
gam.17 <- as.data.frame(gam.data.17)
gam.data.17 <- na.omit(gam.data.17)

LG.xy.sp <- dens.2018.all
coordinates(LG.xy.sp) <- ~ longitude + latitude
proj4string(sst.18) <- wgs1984.proj
proj4string(LG.xy.sp) <- wgs1984.proj
sst.pts.18 <- extract(sst.18, LG.xy.sp)
sst.pts.18 <- as.data.frame(sst.pts.18)
gam.data.18 <- cbind2 (x=dens.2018.all, y=sst.pts.18)
gam.18 <- as.data.frame(gam.data.18)
gam.data.18 <- na.omit(gam.data.18)

LG.xy.sp <- dens.2019.all
coordinates(LG.xy.sp) <- ~ longitude + latitude
proj4string(sst.19) <- wgs1984.proj
proj4string(LG.xy.sp) <- wgs1984.proj
sst.pts.19 <- extract(sst.19, LG.xy.sp)
sst.pts.19 <- as.data.frame(sst.pts.19)
gam.data.19 <- cbind2 (x=dens.2019.all, y=sst.pts.19)
gam.19 <- as.data.frame(gam.data.19)
gam.data.19 <- na.omit(gam.data.19)


### Interpolating data to get all xy temp values
library(gstat)
library(rgdal)

setwd("~/Desktop/PD_stuffies/SDMS/shpfiles")
map1 <- readOGR("coast.buff.shp")
plot(map1)

#p <- rasterToPoints(sst.12)
#p.df <- as.data.frame(p)
#p <- as.data.frame(p)

sst.12.sp <- rasterToPoints(sst.12, spatial = TRUE)
#sst.12.sp.T <- spTransform(sst.12.sp, CRS("+proj=robin"))

grd <- as.data.frame(spsample(map1, "regular", n=50000))
 names(grd)       <- c("X", "Y")
 coordinates(grd) <- c("X", "Y")
 gridded(grd)     <- TRUE  # Create SpatialPixel object
 fullgrid(grd)    <- TRUE  # Create SpatialGrid object
 
proj4string(grd) <- proj4string(sst.12.sp)
proj4string(sst.12.sp.T) <- proj4string(sst.12.sp) # Temp fix until new proj env is adopted


P.idw <- gstat::idw(sst.12.CMEMs~1, sst.12.sp, newdata=grd)
r <- raster(P.idw)
plot(r)
r.m <- mask(r, map1)
plot(r.m)

envdata.12 <- extract(x=r.m, y=cbind(LG_dens_year$longitude, LG_dens_year$latitude))
data.12 <- cbind2 (x=LG_dens_year, y=envdata.12)

#######
sst.13 <- 'sst.13.CMEMs.tif'
sst.13=stack(sst.13)
sst.13.sp <- rasterToPoints(sst.13, spatial = TRUE)
plot(sst.13.sp)

grd <- as.data.frame(spsample(map1, "regular", n=50000))
names(grd)       <- c("X", "Y")
coordinates(grd) <- c("X", "Y")
gridded(grd)     <- TRUE  # Create SpatialPixel object
fullgrid(grd)    <- TRUE  # Create SpatialGrid object

proj4string(grd) <- proj4string(sst.13.sp)
proj4string(sst.13.sp) <- proj4string(sst.13.sp) 
P.idw <- gstat::idw(sst.13.CMEMs~1, sst.13.sp, newdata=grd)
r <- raster(P.idw)
plot(r)

envdata.12 <- extract(x=r, y=cbind(LG_dens_year$longitude, LG_dens_year$latitude))
data.12 <- cbind2 (x=LG_dens_year, y=envdata.12)
write.table(data.12, file="dens.12.sst.txt", sep="\t", quote = FALSE)



## More models
m1 <- gam(density_per_m2 ~ s(temp) + year + s(latitude) + s(temp, by=year), data=gam_test_data)


linear_model = gam(density_per_m2~temp, data=gam_test_data)
nested_gam_model = gam(density_per_m2~s(temp)+temp, data=gam_test_data)
print(anova(linear_model, nested_gam_model, test="Chisq"))


basic_model = gam(density_per_m2~ year + s(temp), data= gam_test_data)
basic_summary = summary(basic_model)
print(basic_summary$p.table)
print(basic_summary$s.table)
plot(basic_model)

categorical_interact <- gam(density_per_m2~year+s(longitude,latitude)+s(temp,by=year),data=gam_test_data)
categorical_interact_summary <- summary(categorical_interact)
print(categorical_interact_summary$s.table)
plot(categorical_interact,page=1)


dens.gam <- gam(density_per_m2 ~
               s(temp) +       
               s(temp, by = year, m = 1)+
               s(latitude) +
               s(latitude, by = year, m = 1)+
               s(temp,latitude, bs="fs"), data=gam_test_data)



#Aug 30 2021
mod0 <- gam(density_per_m2 ~ s(temp) + 
              s(temp, by = year, m = 1) + 
              s(latitude) + 
              s(latitude, by = year, m = 1) +
              te(temp, latitude, by = year),
            data = gam_test_data, method = "ML")

mod1 <- gam(density_per_m2 ~ s(temp, k = 15) + 
              s(temp, by = year, k = 15, m = 1) + 
              s(latitude, k = 15) + 
              s(latitude, by = year, k = 15, m = 1) +
              te(temp, latitude, by = year),
            data = gam_test_data, method = "ML")

#with above, if I change year to factor, it gives error: Model has more coefficients than data

mod1 <- gam(density_per_m2 ~ s(temp, bs="cr", k=5) + 
              s(temp, bs="cr", by = year, k = 5, m = 1) + 
              s(latitude, k = 5) + 
              s(latitude, by = year, k = 15, m = 1) +
              te(temp, latitude, by = year),
            data = gam_test_data, method = "ML")


### GAMs predict

#model
mod1 <- gam(density_per_m2 ~ s(longitude, latitude, k=5), data = LG_dens_year)

#plot with mgcViz
b <- getViz(mod1)
pl <- plot(sm(b, 1)) + l_fitRaster() + l_fitContour() 
pl

#upload raster to predict onto
sst.12 <- 'sst.12.CMEMs.tif'
sst.12=stack(sst.12)
r1 <- predict(sst.12, mod1)

#make empty grid from raster
icell <- 1:ncell(sst.12)
pred <- data.frame(sst = sst.12[icell],
         cells = icell,
          longitude = xFromCell(sst.12, icell),
          latitude = yFromCell(sst.12, icell))

pred <- na.omit(pred)
head(pred)

#predict based on GAM and plot
pred$dens_pred <- predict(mod1, newdata = pred, type = "response")
rpred <- raster(sst.12)
rpred[pred$cells] <- pred$dens_pred
plot(rpred)


#### Working with size count data
#sum(subset(erica_nielsen_lottia_data_size_count, lottia_size_bin < 25 & lottia_size_bin >= 10, select = "total"))

erica_nielsen_lottia_data_size_count$bins <- cut(erica_nielsen_lottia_data_size_count$lottia_size_bin, breaks=c(0,25,40,130), labels=c("small","med","large"))

sc.df <- erica_nielsen_lottia_data_size_count %>% group_by(site_code, longitude, latitude, marine_common_year, total_plots_sampled_season, bins) %>% summarize(total = sum(total))
sc.df <- na.omit(sc.df)
write.table(sc.df, file="size.count.bin.df.txt", sep="\t", quote = FALSE)

ggplot(size_bins_us) +
  +     aes(x = marine_common_year, y = total, color = bins) +
  +     geom_point(alpha = 0.5, size = 0.2) +
  +     stat_smooth() +
  +     theme_bw() 


## to merge plot_sampled df with previous one:
sc.test.merge <- merge(sc_df_final, sc_bin_test, by=c("site_code","marine_common_year"))
#this added extra rows per size bin, so had to delete those columns, then import into R and remove duplicate rows
sc.final <- distinct(sc_df_b4_filter)


library(tidymv)
m2 <- gam(total~bins + s(longitude, latitude, k=5) + s(marine_common_year, by=bins), family="poisson", data=sc.df)

model_2_p <- predict_gam(m2)
model_2_p %>%
  ggplot(aes(longitude, latitude, z = fit)) +
  geom_raster(aes(fill = fit)) +
  geom_contour(colour = "white") +
  scale_fill_continuous(name = "y") +
  theme_minimal() +
  facet_wrap(~marine_common_year,nrow=2)+
  theme(legend.position = "top")






m1 <- gam(total ~ s(temp, k=20), data =sc_df_final, family = 'poisson')
m2 <- gam(total ~ s(temp, k=20, by=bins), data =sc_df_final, family = 'poisson')
m3 <- gam(total ~ bins + s(temp, k=20, by=bins) + s(longitude, latitude, k=20, by=bins) + s(marine_common_year, by=bins) te(temp, year, k=30, by=bins), data =sc_df_final, family = 'poisson')


mod1 <- gam(total ~ s(temp, k = 5) + 
            s(temp, by = bins, k = 5, m = 1) + 
            s(latitude, k = 5) +
            s(marine_common_year, k=5)+
            s(latitude, by = bins, k = 5, m = 1) +
            te(temp, latitude, marine_common_year, by = bins),
            data = sc_df_final, method = "ML")


xy_year_ti_model = gam(total~ s(longitude,latitude, k=50)+s(marine_common_year) + 
                          ti(longitude, latitude, marine_common_year, d=c(2,1)),
                        data=sc_df_final,family=poisson,method="REML")

xy_temp_ti_model = gam(total~ s(longitude,latitude, k=50)+s(temp, by=marine_common_year) + 
                         ti(longitude, latitude, temp, d=c(2,1)),
                       data=sc_df_final,family=poisson,method="REML")

xy_temp_ti_bins_model = gam(total~ s(longitude,latitude, k=50)+s(temp) + 
                         ti(latitude, temp, d=c(2,1), by = bins),
                       data=sc_df_final,family=poisson,method="REML")

b <- gam(total~te(longitude,latitude,marine_common_year,k=c(50,10),d=c(2,1),
          bs=c("tp","cr")), data=sc_df_final,family=poisson,method="REML")


int_year_lat <- gam(total~ bins +
                    te(marine_common_year, latitude, bs=c("gp", "tp"), k=c(10, 10), m=2) +
                    te(marine_common_year, latitude, by=bins, bs= c("gp", "tp"),
                       k=c(10, 10), m=1),
                  data=sc_df_final, method="REML", family="poisson")

int_year_temp <- gam(total~ bins +
                      te(marine_common_year, temp, bs=c("gp", "tp"), k=c(10, 10), m=2) +
                      te(marine_common_year, temp, by=bins, bs= c("gp", "tp"),
                         k=c(10, 10), m=1),
                    data=sc_df_final, method="REML", family="poisson")

int_year_temp_off <- gam(total~ bins +
                       te(marine_common_year, temp, bs=c("gp", "tp"), k=c(10, 10), m=2) +
                       te(marine_common_year, temp, by=bins, bs= c("gp", "tp"),
                          k=c(10, 10), m=1), offset=log(sampled_area),
                     data=sc_df_final, method="REML", family="poisson")





## estimate the relationship btwn temp and size class 

### THIS ONE IS BEST SO FAR!!!
temp.bin.I <- gam(total~s(temp, by=bins, k=50) +
                  s(bins, bs="re") + s(bins, year_f, bs="re"),
                  data=sc_df_final,
                  family=Gamma(link="log"), method="REML",
                  drop.unused.levels=FALSE)

##This beats temp.bin.I
temp.xy.bin.I <- gam(total~ s(temp, by=bins, k=50) +
                       s(bins, bs="re") + s(bins, year_f, bs="re")+
                         s(longitude,latitude, k=50, bs = "gp"),
                     data=sc_df_final, 
                     family=Gamma(link="log"), method="REML",
                     drop.unused.levels=FALSE)

##This beats temp.bin.I
temp.year.I <- gam(total~ s(temp, by=bins, k=50) +
                       s(bins, bs="re") + s(bins, year_f, bs="re")+
                        te(marine_common_year, temp, bs=c("gp", "tp"), k=c(10, 10), m=2),
                     data=sc_df_final, 
                     family=Gamma(link="log"), method="REML",
                     drop.unused.levels=FALSE)

## need to run on super computer
temp.xy.year.bin.I <- gam(total~ s(temp, by=bins, k=50) +
                       s(bins, bs="re") + s(longitude,latitude, by=bins, k=50, bs = "gp")+
                         ti(temp, marine_common_year, by=bins, k=c(40, 20), m=2),
                     data=sc_df_final, 
                     family=Gamma(link="log"), method="REML",
                     drop.unused.levels=FALSE)

#in the works...
temp.xy.year.bin.S <- gam(count ∼ t2(week, latitude, species, bs=c("cc", "tp", "re"),
                            k=c(10, 10, 6), m=2, full=TRUE),
                 data=bird_move, method="REML", family="poisson",
                 knots=list(week=c(0, 52)))

### OCT 2021 CODE
erica_nielsen_lottia_data_size_count$bins <- cut(erica_nielsen_lottia_data_size_count$lottia_size_bin, breaks=c(0,25,40,130), labels=c("small","med","large"))

sc.df <- erica_nielsen_lottia_data_size_count %>% group_by(site_code, longitude, latitude, marine_common_year, total_plots_sampled_season, bins) %>% summarize(total = sum(total))

df.test <- aggregate(total~bins+site_code+marine_common_year+latitude+longitude+total_plots_sampled_season+mpa_designation, erica_nielsen_lottia_data_size_count, sum)

#sc.df and df.test were the same

sc.df <- na.omit(sc.df)
View(sc.df)
sc.test.merge <- merge(sc_bin_df_2, sc.df, by=c("site_code","marine_common_year"))

write.table(sc.test.merge, file="sc.bin.df.2.merged.w.plot.mpa.txt", sep="\t", quote = FALSE)

#deleted repeat columns
sc.plot.mpa.df <- distinct(LG_sc_plot_mpa_test)


setwd("~/Desktop/PD_stuffies/demoography/CMEMS.90.to.19")
sst.00 <- 'raster1.tif'
sst.00=stack(sst.00)
sst.01 <- 'raster2.tif'
sst.01=stack(sst.01)
sst.02 <- 'raster3.tif'
sst.02=stack(sst.02)
sst.03 <- 'raster4.tif'
sst.03=stack(sst.03)
sst.04 <- 'raster5.tif'
sst.04=stack(sst.04)
sst.05 <- 'raster6.tif'
sst.05=stack(sst.05)
sst.06 <- 'raster7.tif'
sst.06=stack(sst.06)
sst.07 <- 'raster8.tif'
sst.07=stack(sst.07)
sst.08 <- 'raster9.tif'
sst.08=stack(sst.08)
sst.09 <- 'raster10.tif'
sst.09=stack(sst.09)
sst.10 <- 'raster11.tif'
sst.10=stack(sst.10)
sst.11 <- 'raster12.tif'
sst.11=stack(sst.11)
sst.12 <- 'raster13.tif'
sst.12=stack(sst.12)
sst.13 <- 'raster14.tif'
sst.13=stack(sst.13)
sst.14 <- 'raster15.tif'
sst.14=stack(sst.14)
sst.15 <- 'raster16.tif'
sst.15=stack(sst.15)
sst.16 <- 'raster17.tif'
sst.16=stack(sst.16)
sst.17 <- 'raster18.tif'
sst.17=stack(sst.17)
sst.18 <- 'raster19.tif'
sst.18=stack(sst.18)
sst.19 <- 'raster20.tif'
sst.19=stack(sst.19)
sst.95 <- 'raster26.tif'
sst.95=stack(sst.95)
sst.96 <- 'raster27.tif'
sst.96=stack(sst.96)
sst.97 <- 'raster28.tif'
sst.97=stack(sst.97)
sst.98 <- 'raster29.tif'
sst.98=stack(sst.98)
sst.99 <- 'raster30.tif'
sst.99=stack(sst.99)

setwd("~/Desktop/PD_stuffies/demoography/CMEMS.90.to.19/CMEMS.curr.95.to.19")
curr.00 <- 'raster1.tif'
curr.00=stack(curr.00)
curr.01 <- 'raster2.tif'
curr.01=stack(curr.01)
curr.02 <- 'raster3.tif'
curr.02=stack(curr.02)
curr.03 <- 'raster4.tif'
curr.03=stack(curr.03)
curr.04 <- 'raster5.tif'
curr.04=stack(curr.04)
curr.05 <- 'raster6.tif'
curr.05=stack(curr.05)
curr.06 <- 'raster7.tif'
curr.06=stack(curr.06)
curr.07 <- 'raster8.tif'
curr.07=stack(curr.07)
curr.08 <- 'raster9.tif'
curr.08=stack(curr.08)
curr.09 <- 'raster10.tif'
curr.09=stack(curr.09)
curr.10 <- 'raster11.tif'
curr.10=stack(curr.10)
curr.11 <- 'raster12.tif'
curr.11=stack(curr.11)
curr.12 <- 'raster13.tif'
curr.12=stack(curr.12)
curr.13 <- 'raster14.tif'
curr.13=stack(curr.13)
curr.14 <- 'raster15.tif'
curr.14=stack(curr.14)
curr.15 <- 'raster16.tif'
curr.15=stack(curr.15)
curr.16 <- 'raster17.tif'
curr.16=stack(curr.16)
curr.17 <- 'raster18.tif'
curr.17=stack(curr.17)
curr.18 <- 'raster19.tif'
curr.18=stack(curr.18)
curr.19 <- 'raster20.tif'
curr.19=stack(curr.19)
curr.95 <- 'raster21.tif'
curr.95=stack(curr.95)
curr.96 <- 'raster22.tif'
curr.96=stack(curr.96)
curr.97 <- 'raster23.tif'
curr.97=stack(curr.97)
curr.98 <- 'raster24.tif'
curr.98=stack(curr.98)
curr.99 <- 'raster25.tif'
curr.99=stack(curr.99)




library(dplyr)

#this has lat long for sst extraction
sc_bin_df_2 <- read_excel("~/Desktop/PD_stuffies/demoography/GAMs/sc.bin.df.2.new.bins.xlsx", 
                          sheet = "Sheet1", col_types = c("text", 
                           "numeric", "numeric", "numeric", 
                         "text", "numeric", "text", "numeric"))

#this has lat long for current extraction
sc_bin_df_3 <- read_excel("~/Desktop/PD_stuffies/demoography/GAMs/sc.bin.df.2.new.bins.xlsx", 
                          sheet = "Sheet2", col_types = c("text", 
                          "numeric", "numeric", "numeric", 
                           "text", "numeric", "text", "numeric"))

sc.95 <- sc_bin_df_2 %>%  filter(marine_common_year == 1995) 
sst.data.95 <- extract(x=sst.95, y=cbind(sc.95$longitude, sc.95$latitude))
s.data.95<- cbind2 (x=sc.95, y=sst.data.95)
curr.sc.95 <- sc_bin_df_3 %>%  filter(marine_common_year == 1995) 
curr.data.95 <- extract(x=curr.95, y=cbind(curr.sc.95$longitude, curr.sc.95$latitude))
s.c.data.95<- cbind2 (x=s.data.95, y=curr.data.95)

sc.96 <- sc_bin_df_2 %>%  filter(marine_common_year == 1996) 
sst.data.96 <- extract(x=sst.96, y=cbind(sc.96$longitude, sc.96$latitude))
s.data.96<- cbind2 (x=sc.96, y=sst.data.96)
curr.sc.96 <- sc_bin_df_3 %>%  filter(marine_common_year == 1996) 
curr.data.96 <- extract(x=curr.96, y=cbind(curr.sc.96$longitude, curr.sc.96$latitude))
s.c.data.96<- cbind2 (x=s.data.96, y=curr.data.96)

sc.97 <- sc_bin_df_2 %>%  filter(marine_common_year == 1997) 
sst.data.97 <- extract(x=sst.97, y=cbind(sc.97$longitude, sc.97$latitude))
s.data.97<- cbind2 (x=sc.97, y=sst.data.97)
curr.sc.97 <- sc_bin_df_3 %>%  filter(marine_common_year == 1997) 
curr.data.97 <- extract(x=curr.97, y=cbind(curr.sc.97$longitude, curr.sc.97$latitude))
s.c.data.97<- cbind2 (x=s.data.97, y=curr.data.97)

sc.98 <- sc_bin_df_2 %>%  filter(marine_common_year == 1998) 
sst.data.98 <- extract(x=sst.98, y=cbind(sc.98$longitude, sc.98$latitude))
s.data.98<- cbind2 (x=sc.98, y=sst.data.98)
curr.sc.98 <- sc_bin_df_3 %>%  filter(marine_common_year == 1998) 
curr.data.98 <- extract(x=curr.98, y=cbind(curr.sc.98$longitude, curr.sc.98$latitude))
s.c.data.98<- cbind2 (x=s.data.98, y=curr.data.98)

sc.99 <- sc_bin_df_2 %>%  filter(marine_common_year == 1999) 
sst.data.99 <- extract(x=sst.99, y=cbind(sc.99$longitude, sc.99$latitude))
s.data.99<- cbind2 (x=sc.99, y=sst.data.99)
curr.sc.99 <- sc_bin_df_3 %>%  filter(marine_common_year == 1999) 
curr.data.99 <- extract(x=curr.99, y=cbind(curr.sc.99$longitude, curr.sc.99$latitude))
s.c.data.99<- cbind2 (x=s.data.99, y=curr.data.99)

sc.00 <- sc_bin_df_2 %>%  filter(marine_common_year == 2000) 
sst.data.00 <- extract(x=sst.00, y=cbind(sc.00$longitude, sc.00$latitude))
s.data.00<- cbind2 (x=sc.00, y=sst.data.00)
curr.sc.00 <- sc_bin_df_3 %>%  filter(marine_common_year == 2000) 
curr.data.00 <- extract(x=curr.00, y=cbind(curr.sc.00$longitude, curr.sc.00$latitude))
s.c.data.00<- cbind2 (x=s.data.00, y=curr.data.00)

sc.01 <- sc_bin_df_2 %>%  filter(marine_common_year == 2001) 
sst.data.01 <- extract(x=sst.01, y=cbind(sc.01$longitude, sc.01$latitude))
s.data.01<- cbind2 (x=sc.01, y=sst.data.01)
curr.sc.01 <- sc_bin_df_3 %>%  filter(marine_common_year == 2001) 
curr.data.01 <- extract(x=curr.01, y=cbind(curr.sc.01$longitude, curr.sc.01$latitude))
s.c.data.01<- cbind2 (x=s.data.01, y=curr.data.01)

sc.02 <- sc_bin_df_2 %>%  filter(marine_common_year == 2002) 
sst.data.02 <- extract(x=sst.02, y=cbind(sc.02$longitude, sc.02$latitude))
s.data.02<- cbind2 (x=sc.02, y=sst.data.02)
curr.sc.02 <- sc_bin_df_3 %>%  filter(marine_common_year == 2002) 
curr.data.02 <- extract(x=curr.02, y=cbind(curr.sc.02$longitude, curr.sc.02$latitude))
s.c.data.02<- cbind2 (x=s.data.02, y=curr.data.02)

sc.03 <- sc_bin_df_2 %>%  filter(marine_common_year == 2003) 
sst.data.03 <- extract(x=sst.03, y=cbind(sc.03$longitude, sc.03$latitude))
s.data.03<- cbind2 (x=sc.03, y=sst.data.03)
curr.sc.03 <- sc_bin_df_3 %>%  filter(marine_common_year == 2003) 
curr.data.03 <- extract(x=curr.03, y=cbind(curr.sc.03$longitude, curr.sc.03$latitude))
s.c.data.03<- cbind2 (x=s.data.03, y=curr.data.03)

sc.04 <- sc_bin_df_2 %>%  filter(marine_common_year == 2004) 
sst.data.04 <- extract(x=sst.04, y=cbind(sc.04$longitude, sc.04$latitude))
s.data.04<- cbind2 (x=sc.04, y=sst.data.04)
curr.sc.04 <- sc_bin_df_3 %>%  filter(marine_common_year == 2004) 
curr.data.04 <- extract(x=curr.04, y=cbind(curr.sc.04$longitude, curr.sc.04$latitude))
s.c.data.04<- cbind2 (x=s.data.04, y=curr.data.04)

sc.05 <- sc_bin_df_2 %>%  filter(marine_common_year == 2005) 
sst.data.05 <- extract(x=sst.05, y=cbind(sc.05$longitude, sc.05$latitude))
s.data.05<- cbind2 (x=sc.05, y=sst.data.05)
curr.sc.05 <- sc_bin_df_3 %>%  filter(marine_common_year == 2005) 
curr.data.05 <- extract(x=curr.05, y=cbind(curr.sc.05$longitude, curr.sc.05$latitude))
s.c.data.05<- cbind2 (x=s.data.05, y=curr.data.05)

sc.06 <- sc_bin_df_2 %>%  filter(marine_common_year == 2006) 
sst.data.06 <- extract(x=sst.06, y=cbind(sc.06$longitude, sc.06$latitude))
s.data.06<- cbind2 (x=sc.06, y=sst.data.06)
curr.sc.06 <- sc_bin_df_3 %>%  filter(marine_common_year == 2006) 
curr.data.06 <- extract(x=curr.06, y=cbind(curr.sc.06$longitude, curr.sc.06$latitude))
s.c.data.06<- cbind2 (x=s.data.06, y=curr.data.06)

sc.07 <- sc_bin_df_2 %>%  filter(marine_common_year == 2007) 
sst.data.07 <- extract(x=sst.07, y=cbind(sc.07$longitude, sc.07$latitude))
s.data.07<- cbind2 (x=sc.07, y=sst.data.07)
curr.sc.07 <- sc_bin_df_3 %>%  filter(marine_common_year == 2007) 
curr.data.07 <- extract(x=curr.07, y=cbind(curr.sc.07$longitude, curr.sc.07$latitude))
s.c.data.07<- cbind2 (x=s.data.07, y=curr.data.07)

sc.08 <- sc_bin_df_2 %>%  filter(marine_common_year == 2008) 
sst.data.08 <- extract(x=sst.08, y=cbind(sc.08$longitude, sc.08$latitude))
s.data.08<- cbind2 (x=sc.08, y=sst.data.08)
curr.sc.08 <- sc_bin_df_3 %>%  filter(marine_common_year == 2008) 
curr.data.08 <- extract(x=curr.08, y=cbind(curr.sc.08$longitude, curr.sc.08$latitude))
s.c.data.08<- cbind2 (x=s.data.08, y=curr.data.08)

sc.09 <- sc_bin_df_2 %>%  filter(marine_common_year == 2009) 
sst.data.09 <- extract(x=sst.09, y=cbind(sc.09$longitude, sc.09$latitude))
s.data.09<- cbind2 (x=sc.09, y=sst.data.09)
curr.sc.09 <- sc_bin_df_3 %>%  filter(marine_common_year == 2009) 
curr.data.09 <- extract(x=curr.09, y=cbind(curr.sc.09$longitude, curr.sc.09$latitude))
s.c.data.09<- cbind2 (x=s.data.09, y=curr.data.09)

sc.10 <- sc_bin_df_2 %>%  filter(marine_common_year == 2010) 
sst.data.10 <- extract(x=sst.10, y=cbind(sc.10$longitude, sc.10$latitude))
s.data.10<- cbind2 (x=sc.10, y=sst.data.10)
curr.sc.10 <- sc_bin_df_3 %>%  filter(marine_common_year == 2010) 
curr.data.10 <- extract(x=curr.10, y=cbind(curr.sc.10$longitude, curr.sc.10$latitude))
s.c.data.10<- cbind2 (x=s.data.10, y=curr.data.10)

sc.11 <- sc_bin_df_2 %>%  filter(marine_common_year == 2011) 
sst.data.11 <- extract(x=sst.11, y=cbind(sc.11$longitude, sc.11$latitude))
s.data.11<- cbind2 (x=sc.11, y=sst.data.11)
curr.sc.11 <- sc_bin_df_3 %>%  filter(marine_common_year == 2011) 
curr.data.11 <- extract(x=curr.11, y=cbind(curr.sc.11$longitude, curr.sc.11$latitude))
s.c.data.11<- cbind2 (x=s.data.11, y=curr.data.11)

sc.12 <- sc_bin_df_2 %>%  filter(marine_common_year == 2012) 
sst.data.12 <- extract(x=sst.12, y=cbind(sc.12$longitude, sc.12$latitude))
s.data.12<- cbind2 (x=sc.12, y=sst.data.12)
curr.sc.12 <- sc_bin_df_3 %>%  filter(marine_common_year == 2012) 
curr.data.12 <- extract(x=curr.12, y=cbind(curr.sc.12$longitude, curr.sc.12$latitude))
s.c.data.12<- cbind2 (x=s.data.12, y=curr.data.12)

sc.13 <- sc_bin_df_2 %>%  filter(marine_common_year == 2013) 
sst.data.13 <- extract(x=sst.13, y=cbind(sc.13$longitude, sc.13$latitude))
s.data.13<- cbind2 (x=sc.13, y=sst.data.13)
curr.sc.13 <- sc_bin_df_3 %>%  filter(marine_common_year == 2013) 
curr.data.13 <- extract(x=curr.13, y=cbind(curr.sc.13$longitude, curr.sc.13$latitude))
s.c.data.13<- cbind2 (x=s.data.13, y=curr.data.13)

sc.14 <- sc_bin_df_2 %>%  filter(marine_common_year == 2014) 
sst.data.14 <- extract(x=sst.14, y=cbind(sc.14$longitude, sc.14$latitude))
s.data.14<- cbind2 (x=sc.14, y=sst.data.14)
curr.sc.14 <- sc_bin_df_3 %>%  filter(marine_common_year == 2014) 
curr.data.14 <- extract(x=curr.14, y=cbind(curr.sc.14$longitude, curr.sc.14$latitude))
s.c.data.14<- cbind2 (x=s.data.14, y=curr.data.14)

sc.15 <- sc_bin_df_2 %>%  filter(marine_common_year == 2015) 
sst.data.15 <- extract(x=sst.15, y=cbind(sc.15$longitude, sc.15$latitude))
s.data.15<- cbind2 (x=sc.15, y=sst.data.15)
curr.sc.15 <- sc_bin_df_3 %>%  filter(marine_common_year == 2015) 
curr.data.15 <- extract(x=curr.15, y=cbind(curr.sc.15$longitude, curr.sc.15$latitude))
s.c.data.15<- cbind2 (x=s.data.15, y=curr.data.15)

sc.16 <- sc_bin_df_2 %>%  filter(marine_common_year == 2016) 
sst.data.16 <- extract(x=sst.16, y=cbind(sc.16$longitude, sc.16$latitude))
s.data.16<- cbind2 (x=sc.16, y=sst.data.16)
curr.sc.16 <- sc_bin_df_3 %>%  filter(marine_common_year == 2016) 
curr.data.16 <- extract(x=curr.16, y=cbind(curr.sc.16$longitude, curr.sc.16$latitude))
s.c.data.16<- cbind2 (x=s.data.16, y=curr.data.16)

sc.17 <- sc_bin_df_2 %>%  filter(marine_common_year == 2017) 
sst.data.17 <- extract(x=sst.17, y=cbind(sc.17$longitude, sc.17$latitude))
s.data.17<- cbind2 (x=sc.17, y=sst.data.17)
curr.sc.17 <- sc_bin_df_3 %>%  filter(marine_common_year == 2017) 
curr.data.17 <- extract(x=curr.17, y=cbind(curr.sc.17$longitude, curr.sc.17$latitude))
s.c.data.17<- cbind2 (x=s.data.17, y=curr.data.17)

sc.18 <- sc_bin_df_2 %>%  filter(marine_common_year == 2018) 
sst.data.18 <- extract(x=sst.18, y=cbind(sc.18$longitude, sc.18$latitude))
s.data.18<- cbind2 (x=sc.18, y=sst.data.18)
curr.sc.18 <- sc_bin_df_3 %>%  filter(marine_common_year == 2018) 
curr.data.18 <- extract(x=curr.18, y=cbind(curr.sc.18$longitude, curr.sc.18$latitude))
s.c.data.18<- cbind2 (x=s.data.18, y=curr.data.18)

sc.19 <- sc_bin_df_2 %>%  filter(marine_common_year == 2019) 
sst.data.19 <- extract(x=sst.19, y=cbind(sc.19$longitude, sc.19$latitude))
s.data.19<- cbind2 (x=sc.19, y=sst.data.19)
curr.sc.19 <- sc_bin_df_3 %>%  filter(marine_common_year == 2019) 
curr.data.19 <- extract(x=curr.19, y=cbind(curr.sc.19$longitude, curr.sc.19$latitude))
s.c.data.19<- cbind2 (x=s.data.19, y=curr.data.19)

write.table(s.c.data.00, file="s.c.data.00.txt", sep="\t", quote = FALSE)
write.table(s.c.data.01, file="s.c.data.01.txt", sep="\t", quote = FALSE)
write.table(s.c.data.02, file="s.c.data.02.txt", sep="\t", quote = FALSE)
write.table(s.c.data.03, file="s.c.data.03.txt", sep="\t", quote = FALSE)
write.table(s.c.data.04, file="s.c.data.04.txt", sep="\t", quote = FALSE)
write.table(s.c.data.05, file="s.c.data.05.txt", sep="\t", quote = FALSE)
write.table(s.c.data.06, file="s.c.data.06.txt", sep="\t", quote = FALSE)
write.table(s.c.data.07, file="s.c.data.07.txt", sep="\t", quote = FALSE)
write.table(s.c.data.08, file="s.c.data.08.txt", sep="\t", quote = FALSE)
write.table(s.c.data.09, file="s.c.data.09.txt", sep="\t", quote = FALSE)
write.table(s.c.data.10, file="s.c.data.10.txt", sep="\t", quote = FALSE)
write.table(s.c.data.11, file="s.c.data.11.txt", sep="\t", quote = FALSE)
write.table(s.c.data.12, file="s.c.data.12.txt", sep="\t", quote = FALSE)
write.table(s.c.data.13, file="s.c.data.13.txt", sep="\t", quote = FALSE)
write.table(s.c.data.14, file="s.c.data.14.txt", sep="\t", quote = FALSE)
write.table(s.c.data.15, file="s.c.data.15.txt", sep="\t", quote = FALSE)
write.table(s.c.data.16, file="s.c.data.16.txt", sep="\t", quote = FALSE)
write.table(s.c.data.17, file="s.c.data.17.txt", sep="\t", quote = FALSE)
write.table(s.c.data.18, file="s.c.data.18.txt", sep="\t", quote = FALSE)
write.table(s.c.data.19, file="s.c.data.19.txt", sep="\t", quote = FALSE)
write.table(s.c.data.95, file="s.c.data.95.txt", sep="\t", quote = FALSE)
write.table(s.c.data.96, file="s.c.data.96.txt", sep="\t", quote = FALSE)
write.table(s.c.data.97, file="s.c.data.97.txt", sep="\t", quote = FALSE)
write.table(s.c.data.98, file="s.c.data.98.txt", sep="\t", quote = FALSE)
write.table(s.c.data.99, file="s.c.data.99.txt", sep="\t", quote = FALSE)


### For fac models
sc_bin_fac_models <- read_excel("sc.bin.fac.models.xlsx")

## For clipping gam predict to only coast:
library("rgdal")
library("rgeos")
library("raster")

setwd("~/Desktop")
AF.line <- readOGR(dsn="us.coast.buff.2.shp")

CA.mapping.ext <- extent(-124.65, -116.85, 32.30, 40.5)
env.1 <- crop(AF.line, CA.mapping.ext)


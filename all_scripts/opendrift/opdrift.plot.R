### Scripts to visualize Opendrift outputs

library(raster)
library(rgdal)
library(ncdf4)
library(sf)
library(stars)
library(ggplot2)
library(tidyverse)
library(purrr)
library(ggridges)
library(vcd)
library(reshape2)
library(data.table)

setwd("~/Desktop/PD_stuffies/opendrift/new_NOV")

## read input data (.ncdf output)
CAn_12.13 <- nc_open('NEW_outputs/12C/CA/CAn_12C_12.13.dens.nc')

# Trying with raster brick
b.CAn_12.13 <- brick("18C/Mex/Mex_18C_12.13.dens.nc", varname="density_stranded")

sum.CAn_12.13 <- calc(b.CAn_12.13, sum)

plot(sum.CAn_12.13) # gives weird output, areas of high density have lower values

### the .nc files have these high values to fill the map cells with no information... need to remove!

### TO DO FOR SINGLE FILE...

#turn raster to points
data_matrix <- rasterToPoints(sum.17.18)

#turn matrix into dataframe
data_matrix <- as.data.frame(data_matrix)

#remove these high values (this value is replacement of zer)
data_f <- data_matrix[data_matrix$layer != 22950, ] 

#plot the new layer with high values removed
ggplot(data_f, aes(x = x, y = y)) + 
  geom_point(aes(size = layer))

##### TO DO FOR ALL FILES 

#set function to take mean density per .nc file and save as DF

summarize_data <- function(a_nc, the_dir) {
  # open as rasterbrick
  brick_data <- brick(a_nc, varname="density_stranded")

  #calculate total density
  m_rast <- calc(brick_data, mean)
  
  #turn to points
  data_matrix <- rasterToPoints(m_rast)
  
  #turn to df
  data_matrix <- as.data.frame(data_matrix)
  
  #remove weird values
  df <- data_matrix[data_matrix$layer != 255, ] 
  
  #take inverse of layer densities
  df[,3] <- df[,3]^(-1)
  
  #multiply to get back to same ranges
  df[,3]<-df[,3]*10000
  
  #round lat to nearest digit
  df[,-1] <-round(df[,-1],1)
  
  # write the csv to a new file
  write.table(df, file = paste0(the_dir, "/", basename(a_nc), ".txt"))
  
 
}


#set directory for function (the following section [until line 124, I was lazy and manually looped through each region])
the_dir_ex <- "~/Desktop/PD_stuffies/opendrift/new_NOV/12C/SD"

# get .nc files from all opendrift runs
all_OD_files <- list.files("~/Desktop/PD_stuffies/opendrift/new_NOV/12C/SD", pattern = "*.nc",
                               full.names = TRUE)
# run lapply
lapply(all_OD_files,
       FUN = summarize_data,
       the_dir = the_dir_ex)
# you will get null outputs in the console here, but check if .txt files were written then you know it worked

## then read txt files, save each as basename DFs

TxtFiles <- list.files(path = "~/Desktop/PD_stuffies/opendrift/new_NOV/12C/SD", pattern = "txt$")
MyFunc <- function(Nm) {
  FullPath <- paste("~/Desktop/PD_stuffies/opendrift/new_NOV/12C/SD", Nm, sep="/")
  DFname <- sub("\\.txt", "", Nm) #drop .txt from Nm
  DF <- read.delim(FullPath, header = TRUE, row.names = NULL, sep = "")
  DF <- DF[, 3:ncol(DF)]
  DF <- aggregate(.~ y, data = DF, mean)
  assign(DFname, DF, envir = .GlobalEnv)
}
walk(TxtFiles, MyFunc)


df_list <- list(SD_12C_12.13.dens.nc, SD_12C_13.14.dens.nc, SD_12C_14.15.dens.nc, SD_12C_15.16.dens.nc, SD_12C_16.17.dens.nc)
merged.df.1 <- df_list %>% reduce(full_join, by='y')
df_list2 <- list(SD_12C_17.18.dens.nc, SD_12C_18.19.dens.nc, SD_12C_19.20.dens.nc)
merged.df.2 <- df_list2 %>% reduce(full_join, by='y')
full_merg <- merge(merged.df.1, merged.df.2, by ='y', all = TRUE)
#will get message here:column names ‘layer.x.x’, ‘layer.y.y’ are duplicated in the result, its fine because we wil rename them now..

names(full_merg)[1] <- 'latitude'
names(full_merg)[2] <- '12.13.dens'
names(full_merg)[3] <- '13.14.dens'
names(full_merg)[4] <- '14.15.dens'
names(full_merg)[5] <- '15.16.dens'
names(full_merg)[6] <- '16.17.dens'
names(full_merg)[7] <- '17.18.dens'
names(full_merg)[8] <- '18.19.dens'
names(full_merg)[9] <- '19.20.dens'

full_merg[is.na(full_merg)] = 0

write.table(full_merg, "SD_12C.full.merge.txt")

## here's where I edited the txt file in excel, creating the columns: lat, avg_density, year

#lat_dens_year <- read_excel("~/Desktop/PD_stuffies/opendrift/outputs/output/lat.dens.year.xlsx", 
     #                       +     col_types = c("numeric", "numeric", "text", "text"))

#read new DF
opdrift_18C_working <- read.delim("~/Desktop/PD_stuffies/opendrift/new_NOV/opdrift_18C_new.nov.txt")
opdrift_18C_working$latitude<-as.factor(opdrift_18C_working$latitude)

setnames(opdrift_18C_working, old = c('wint.12.13','wint.13.14','wint.14.15', 'wint.15.16', 'wint.16.17', 'wint.17.18', 'wint.18.19', 'wint.19.20'), 
         new = c('2012/13','2013/14','2014/15', '2015/16', '2016/17', '2017/18', '2018/19', '2019/20'))

opdrift_18_df<-reshape2::melt(opdrift_18C_working, na.rm = FALSE, value.name = "strand_den")

colnames(opdrift_18_df)[3] ="year"
colnames(opdrift_18_df)[4] ="stranded_density"

# NB!!: need to write & read table as I'm struggling to make lat go from factor back to numeric
write.table(opdrift_18_df, file="opdrift_18_new.nov_df.txt", col.names=TRUE, quote=FALSE)

opdrift_18_new.nov_df <- read.csv("~/Desktop/PD_stuffies/opendrift/new_NOV/opdrift_18_new.nov_df.txt", sep="")

#g <-ggplot(lat_dens_year, aes(latitude, year, height = stranded_density, group = year)) + geom_density_ridges(stat = "identity", scale = 1) + theme_ridges()

#pdf("ridgeplot.pdf")
#g + coord_flip()
#dev.off()


#cols=c("olivedrab2", "darkslategrey", "yellow2")
#library(viridis)
#viridis(5, alpha = 1, begin = 0, end = 1, direction = 1)
#[1] "#440154FF" "#3B528BFF" "#21908CFF" "#5DC863FF" "#FDE725FF"

gg <- ggplot(opdrift_18_new.nov_df, aes(latitude, year, height = stranded_density, group = interaction(year, Region), fill = Region, alpha = 0.1)) + 
  scale_fill_manual(values = c("Leading" = "#3B528BFF", "Northern"="#5DC863FF","Central"="#FDE725FF", "Southern"="#F89441FF", "Trailing"="#CC4678FF")) + geom_density_ridges(stat = "identity", scale = 1) + theme_ridges() + 
  scale_x_continuous(expand = c(0, 0), name = "Latitude", position = "top", breaks = seq(20,45,by = 1)) + #give the break values here
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust=1))

pdf("NEW.NOV.18C.multi.ridgeplot.pdf")
gg + coord_flip()
dev.off()


## script to color individ years based on densities
opdrift_12c_working$Region=factor(opdrift_12c_working$Region, levels=c("Leading","Northern","Central","Southern","Trailing"))

myPalette <- colorRampPalette(rev(brewer.pal(11, "Spectral")))
#sc <- scale_colour_gradient(colours = myPalette(100), limits=c(1, 600))

yr.plt <- ggplot(opdrift_12c_working, aes(latitude, Region, height = wint.12.13)) + 
  geom_density_ridges_gradient(aes(fill= wint.12.13), stat = "identity", scale = 1, gradient_lwd = 1) + theme_ridges() + 
  scale_fill_gradientn(colours = myPalette(100),limits=c(1, 600))+
  scale_x_continuous(expand = c(0, 0), name = "Latitude", breaks = seq(20,45,by = 2)) +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust=1)) 

pdf("19.20.col.ridgeplot.pdf")
yr.plt + coord_flip()
dev.off()


#### script to get median lines for plot

library(dplyr)
dd.18[dd.18==0] <- NA

dd.18%>%
  group_by(Region)%>% 
  select_if(is.numeric) %>%
  summarise_all("median", na.rm = TRUE)

##### NOT USED #######

# read input data (.tif output) - testing just with 2017/18 year
N.17.18 <- stack("Nsites_17.18.dens.plot.tif")


nc_17.18

#Get dimensions to plot
nc_17.18$dim$lon$vals -> lon
nc_17.18$dim$lat$vals -> lat
nc_17.18$dim$time$vals -> time

# Get variable we are interested in to plot
dens.17.18 <- ncvar_get(nc_17.18, "density_surface")

# Plot
image(lon,lat,dens.17.18) # doesn't work, Error in image.default(lon, lat, dens.17.18) : 'z' must be a matrix



# plot raster
plot(N.17.18) # this gives plot with highest values being the elements at sea not stranded on land


# Trying with netcdf using sf/stars
stars_17.18 <- raster::raster("Nsites_17.18.nc", varname="status") %>% st_as_stars()

ggplot()+
  geom_stars(data = stars_17.18) # this gives map with all one value (255)


library(dplyr)
library(tidyr)
library(ncdf4)
library(marmap)
library(ggplot2)
library(geosphere)

#load raw data
matlab <- "Nsites_17.18.nc"
#open a netCDF file
ncin <- nc_open(matlab)
print(ncin)
#get longitude
lon <- ncvar_get(ncin,"lon")
dim(lon)
#get latitude
lat <- ncvar_get(ncin,"lat")
dim(lat)
#yours may be different here
#depending how the different status' were defined - 0: active particle, 1: particle left the domain, 2: particle is onland, 3: particle has been caught
status <- ncvar_get(ncin,"status")
dim(status)
#status
m1 <- as.matrix(status) 

m1 <- as.data.frame(m1)

b.17.18 <- brick("Nsites_17.18.nc", varname="status", stopIfNotEqualSpaced = FALSE)

coords <- brick(raster("Nsites_17.18.nc", varname = "lon"),
                raster("Nsites_17.18.nc", varname = "lat"))



gr <- ggplot(iris, aes(x = Sepal.Length, y = Species)) + 
  geom_density_ridges(rel_min_height = 0.01)


gg <- ggplot(opdrift_12_df, aes(latitude, year, height = stranded_density, group = interaction(year, Region), fill = Region, alpha = 0.1)) + 
  scale_fill_manual(values = c("CA_n" = "#3B528BFF", "CA_c1"="#5DC863FF","CA_c2"="#FDE725FF", "CA_s"="#F89441FF", "MEX"="#CC4678FF")) + geom_density_ridges(stat = "identity", scale = 1) + theme_ridges() + 
  scale_x_discrete(expand = c(0, 0), name = "Latitude", breaks = seq(20,45,by = 2)) +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust=1))


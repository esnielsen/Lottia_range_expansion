#create grid for feems
library(dggridR)
library(dplyr)
require(rgdal)

# create DGG file (here we change the spacing value to create smaller triangles - this is 25 miles)
dggs   <- dgconstruct(spacing=25, projection = "ISEA", aperture = 4, topology = "TRIANGLE")

# crop the grid to a shapefile I made in QGIS from a line map of North America that I cropped and created buffer for
ca_grid   <- dgshptogrid(dggs,"coast.buff.shp", savegrid = "ca.25mi.tri.shp")

#!/usr/bin/env python

## Opendrift code for Northern seeded sites

from opendrift.models.bivalvelarvae import BivalveLarvae
from datetime import datetime, timedelta
import xarray as xr
import matplotlib.pyplot as plt
from opendrift.readers.reader_netCDF_CF_generic import Reader


####### Seed information

#lon = -123.1; lat = 38.3  # Bodega
#lon = -122.96; lat = 38.25  # Dillon Beach
#lon = -123.24; lat = 38.51  # Fort Ross
#lon = -123.34; lat = 38.59  # Kruse Ranch

#lon = -121.93; lat = 36.45  # Soberanes
#lon = -121.90; lat = 36.62  # Hopkins
#lon = -121.95; lat = 36.60  # China Rock

lon = -120.63; lat = 34.74  # Vandenburg
lon = -120.45; lat = 34.44  # Gov Point
lon = -119.51; lat = 34.38  # Carpinteria
lon = -119.75; lat = 33.96  # Willows Anchorage
lon = -118.48; lat = 33.44  # Intake Pipes
lon = -118.47; lat = 33.38  # Shark Harbor


start_time = datetime(2017, 12, 1)
end_time = datetime(2018, 2, 28)

o = BivalveLarvae(loglevel=0)

####### Set readers & landmask

r1 = Reader('cmems_mod_glo_phy_my_0.083_P1D_17-18.nc')
r2 = Reader('mixed_layer_17_18.nc') #for year 17.18 this is within r1, so can delete
r3 = Reader('wind_17_18.nc')

print(r1)
print(r2)
print(r3)

from opendrift.readers import reader_global_landmask
reader_landmask = reader_global_landmask.Reader(
                       extent=[-130, 20, -107, 50])  # lonmin, latmin, lonmax, latmax
                       
o.add_reader([reader_landmask, r1, r2, r3])


####### Set configs

o.set_config('biology:min_settlement_age_seconds', 475200)  # minimum settlement age = 4.5 days (12C = 475200 sec / 5.5 days)
o.set_config('drift:max_age_seconds', 1814000) # maximum settlement age = 18 days  (12C = 1814000 sec / 21 days)
o.set_config('biology:settlement_in_habitat', False)
o.set_config('seed:ocean_only', True)


# Seeding elements uniformly in time from start to end
# The simulation duration is from the first seeding time, until either the provided "duration" or "end_time" (this is different than seeding time)
#o.seed_from_shapefile('ca.1.buff.0.5.shp', number=3000, radius=100,
#	time=[start_time, end_time])


####### Seed elements from sites with seeding radius of 100m

o.seed_elements(lon=-120.63, lat=34.74, number=5000, radius=100,
                time=[start_time, end_time])

o.seed_elements(lon=-120.45, lat=34.44, number=5000, radius=100,
                time=[start_time, end_time])
                
o.seed_elements(lon=-119.51, lat=34.38, number=5000, radius=100,
                time=[start_time, end_time])
                
o.seed_elements(lon=-119.75, lat=33.96, number=5000, radius=100,
                time=[start_time, end_time])
                
o.seed_elements(lon=-118.48, lat=33.44, number=5000, radius=100,
                time=[start_time, end_time])

o.seed_elements(lon=-118.47, lat=33.38, number=5000, radius=100,
                time=[start_time, end_time])
                

####### Run the simulation

if True:  # Set False to import from saved file
    # Run simulation with 1 hour internal calculation time step, and daily output
    o.run(time_step=timedelta(minutes=60), time_step_output=timedelta(hours=24), end_time=end_time,
          outfile='SB_2_12C_17.18.nc')
else: # When simulation is saved to file, it may later be re-imported with:
    import opendrift
    o = opendrift.open('SB_2_12C_17.18.nc')
    

####### Plot outputs

# Density animation
o.animation(filename='SB_2_12C_17.18_anim_density.mp4', density=True, show_elements=False,
            density_pixelsize_m=2500, vmin=0, vmax=100)
# Elements animation
o.animation(filename='SB_2_12C_17.18_animation.mp4')

# Standard plot output
o.plot(filename='SB_2_12C_17.18.plot.pdf')

# Create density output plot
d, dsub, dstr, lon, lat = o.get_density_array(pixelsize_m=3000)
strand_density = xr.DataArray(dstr[-1,:,:], coords={'lon_bin': lon[0:-1], 'lat_bin': lat[0:-1]})
o.plot(fast=True, background=strand_density.where(strand_density>0),
        vmin=0, vmax=20, clabel='Density of stranded elements',
        show_elements=False, linewidth=0, filename='SB_2_12C_17.18.strand.dens.pdf')

# Write output as .tif
o.write_geotiff(filename='SB_2_12C_17.18.dens.plot.tif', pixelsize_km=2)

# Write output as .nc with densities
o.write_netcdf_density_map(filename='SB_2_12C_17.18.dens.nc', pixelsize_m=3000)



#plt.hist(strand_density, label='Stranded density')
#plt.savefig('hist.png')

#plt.scatter(strand_density, lat, alpha=0.5)
#plt.savefig('scat.png')

#sdens = o.get_property('strand_density')
#print(sdens)

#with open('sdens.filename.txt', 'w') as f:
#    print(sdens, file=f)

#h=o.get_histogram(pixelsize_m=3000, weights=None, density=False)
#h.name = 'number'
#h.to_netcdf(filename='Nsites_17.18.hist.nc')

#b=h.sum(dim='time')
#o.plot(background=b.where(b>0), fast=True, show_elements=False, vmin=0, vmax=1000, clabel='First seeding')







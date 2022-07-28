#!/usr/bin/env python
"""
CMEMS + BIVALVE
=============

This script is to compare three parts of coastline, run per year

```
"""

from opendrift.models.bivalvelarvae import BivalveLarvae
from datetime import datetime, timedelta
from opendrift.readers.reader_netCDF_CF_generic import Reader


#%%
# Seed information
lon = -123.1; lat = 38.3  # Bodega
lon = -122.96; lat = 38.25  # Dillon Beach
lon = -123.24; lat = 38.51  # Fort Ross
lon = -123.34; lat = 38.59  # Kruse Ranch

lon = -121.93; lat = 36.45  # Soberanes
lon = -121.90; lat = 36.62  # Hopkins
lon = -121.95; lat = 36.60  # China Rock

lon = -120.63; lat = 34.74  # Vandenburg
lon = -120.45; lat = 34.44  # Gov Point
lon = -119.51; lat = 34.38  # Carpinteria


#lon = -117.23; lat = 32.66  # Cabrillo
#lon = -117.25; lat = 32.86  # Scripps

start_time = datetime(2017, 12, 1)
end_time = datetime(2018, 2, 28)

o = BivalveLarvae()
r1 = Reader(['cmems_mod_glo_phy_my_0.083_P1D_17-18.nc'])
r2 = Reader('mixed_layer_17_18.nc')
r3 = Reader('wind_17_18.nc')

print(r1)
print(r2)
print(r3)

from opendrift.readers import reader_global_landmask
reader_landmask = reader_global_landmask.Reader(
                       extent=[-130, 20, -107, 50])  # lonmin, latmin, lonmax, latmax
                       
o.add_reader([reader_landmask, r1, r2, r3])

o.set_config('biology:min_settlement_age_seconds', 864000)  # minimum settlement age = 10 days
o.set_config('drift:max_age_seconds', 2592000) # minimum settlement age = 30 days
o.set_config('biology:settlement_in_habitat', False)


# Seeding elements uniformly in time from start to end
# The simulation duration is from the first seeding time, until either the provided "duration" or "end_time" (this is different than seeding time)
#o.seed_from_shapefile('ca.1.buff.0.5.shp', number=3000, radius=100,
#	time=[start_time, end_time])

#the example here has seeding radius of 100m
o.seed_elements(lon=-123.1, lat=38.3, number=5000, radius=100,
                time=[start_time, end_time])

o.seed_elements(lon=-122.96, lat=38.25, number=5000, radius=100,
                time=[start_time, end_time])
                
o.seed_elements(lon=-123.24, lat=38.51, number=5000, radius=100,
                time=[start_time, end_time])
                
o.seed_elements(lon=-123.34, lat=38.59, number=5000, radius=100,
                time=[start_time, end_time])


# Run simulation with 1 hour internal calculation time step, and daily output
o.run(time_step=timedelta(minutes=60), time_step_output=timedelta(hours=24), end_time=end_time, outfile='Nsites_17.18.nc')


### Run second model
o2 = BivalveLarvae()
o2.add_reader([reader_landmask, r1, r2, r3])

o2.set_config('biology:min_settlement_age_seconds', 864000)  # minimum settlement age = 10 days
o2.set_config('drift:max_age_seconds', 2592000) # minimum settlement age = 30 days
o2.set_config('biology:settlement_in_habitat', False)

o2.seed_elements(lon=-121.93, lat=36.45, number=5000, radius=100,
                time=[start_time, end_time])

o2.seed_elements(lon=-121.90, lat=36.62, number=5000, radius=100,
                time=[start_time, end_time])
                
o2.seed_elements(lon=-121.95, lat=36.60, number=5000, radius=100,
                time=[start_time, end_time])


o2.run(time_step=timedelta(minutes=60), time_step_output=timedelta(hours=24), end_time=end_time,
        outfile='Msites_17.18.nc')


### Run third model
o3 = BivalveLarvae()
o3.add_reader([reader_landmask, r1, r2, r3])

o3.set_config('biology:min_settlement_age_seconds', 864000)  # minimum settlement age = 10 days
o3.set_config('drift:max_age_seconds', 2592000) # minimum settlement age = 30 days
o3.set_config('biology:settlement_in_habitat', False)

o3.seed_elements(lon=-120.63, lat=34.74, number=5000, radius=100,
                time=[start_time, end_time])

o3.seed_elements(lon=-120.45, lat=34.44, number=5000, radius=100,
                time=[start_time, end_time])
                
o3.seed_elements(lon=-119.51, lat=34.38, number=5000, radius=100,
                time=[start_time, end_time])


o3.run(time_step=timedelta(minutes=60), time_step_output=timedelta(hours=24), end_time=end_time,
          outfile='Ssites_17.18.nc')

o.animation(filename='compare_17.18_animation.mp4', compare=[o2,o3],
            legend=['Northern sites', 'Mid sites', 'Southern sites'])

#o.animation(filename='Nsites_17.18_anim_density.mp4', density=True, show_elements=False,
#            density_pixelsize_m=1000, vmin=0, vmax=100)
#o.animation(filename='Nsites_17.18_animation.mp4')

o.plot(filename='compare_17.18.plot.pdf', compare=[o2,o3],
            legend=['Northern sites', 'Mid sites', 'Southern sites'])

o.write_geotiff(filename='compare_17.18.dens.plot.tiff', compare=[o2,o3],
            legend=['Northern sites', 'Mid sites', 'Southern sites'])

#h = o.get_histogram(pixelsize_m=1500, weights=None, density=False)
#b=h.sum(dim='time')
#o.plot(background=b.where(b>0), fast=True, show_elements=False, vmin=0, vmax=1000, clabel='First seeding')


#num.name = 'number'
#num.to_netcdf(histogram_file)

#o.write_netcdf_density_map(filename='Nsites_13.14.dens.plot.nc')



#d = o.get_density_array(pixelsize_m=1000, weight=None)
#d.name = 'number'
#d.to_netcdf("Nsites_13.14_dens_array.nc")
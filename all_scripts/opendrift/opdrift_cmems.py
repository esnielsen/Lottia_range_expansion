#!/usr/bin/env python
"""
CMEMS
=============

This example runs an OceanDrift simulation
with current data from CMEMS
To run this example, you need a CMEMS account created at
https://marine.copernicus.eu
with username and password stored in a .netrc file with contents:

```
machine nrt.cmems-du.eu
    login <your username>
    password <your password>
```
"""

from opendrift.models.oceandrift import OceanDrift
from datetime import datetime, timedelta
from opendrift.readers.reader_netCDF_CF_generic import Reader


#%%
# Seed information
lon = -117.249; lat = 32.68  # Cabrillo
lon = -119.5; lat = 34.4  # Carpinteria
lon = -123.1; lat = 38.3  # Bodega

start_time = datetime(2013, 12, 1)
end_time = datetime(2014, 2, 28)

o = OceanDrift()
r1 = Reader('cmems_mod_glo_phy_my_0.083_P1D_13-14.nc')
r2 = Reader('mixed_layer_13_14.nc')
r3 = Reader('wind_14_15.nc')

print(r1)
print(r2)
print(r3)

from opendrift.readers import reader_global_landmask
reader_landmask = reader_global_landmask.Reader(
                       extent=[-130, 20, -107, 50])  # lonmin, latmin, lonmax, latmax
                       
o.add_reader([reader_landmask, r1, r2, r3])

o.set_config('general:coastline_action', 'previous')  # Do not let larvae strand when hitting coastline


# Seeding elements uniformly in time from start to end
# The simulation duration is from the first seeding time, until either the provided "duration" or "end_time" (this is different than seeding time)
o.seed_from_shapefile('ca.1.buff.0.5.shp', number=3000, radius=100,
	time=[start_time, end_time])

#the example here has seeding radius of 100m, can set to 0 for seeding from single location
#o.seed_elements(lon=lon, lat=lat, number=3000, radius=100,
#                time=[start_time, end_time])


if True:  # Set False to import from saved file
    # Run simulation with 1 hour internal calculation time step, and daily output
    o.run(time_step=timedelta(minutes=60), time_step_output=timedelta(hours=24), end_time=end_time,
          outfile='test.nc')
else: # When simulation is saved to file, it may later be re-imported with:
    import opendrift
    o = opendrift.open('3env_shp_OD_13.14_test.nc')

o.animation(filename='3env_shp_animation_density.mp4', density=True, show_elements=False,
            density_pixelsize_m=1000, vmin=0, vmax=100)
o.animation(filename='3env_shp_animation.mp4')

o.plot(filename='3env_shp_OD_13.14_test.plot.pdf')

#o.write_netcdf_density_map(filename='OD_13.14_test.dens.plot.nc')

#!/usr/bin/env python

# Opdendrift code for Southern seeded sites

from opendrift.models.bivalvelarvae import BivalveLarvae
from datetime import datetime, timedelta
import xarray as xr
import matplotlib.pyplot as plt
from opendrift.readers.reader_netCDF_CF_generic import Reader


####### Seed information



lon = -117.23; lat = 32.66  # Cabrillo
lon = -117.25; lat = 32.86  # Scripps

#lon = -115.81; lat = 29.95  # Punta Baja
#lon = -114.24; lat = 28.65  # Santa Rosalita
#lon = -114.89; lat = 27.68  # Bahia Tortugas
#lon = -114.29; lat = 27.12  # Bahia Ascuncion

start_time = datetime(2012, 12, 1)
end_time = datetime(2013, 2, 28)

o = BivalveLarvae(loglevel=0)

####### Set readers & landmask

r1 = Reader('cmems_mod_glo_phy_my_0.083_P1D_12-13.nc')
#r2 = Reader('mixed_layer_12.13.nc') #for year 12-13 this is within r1, so can delete
r3 = Reader('wind_12_13.nc')

print(r1)
#print(r2)
print(r3)

from opendrift.readers import reader_global_landmask
reader_landmask = reader_global_landmask.Reader(
                       extent=[-130, 20, -107, 50])  # lonmin, latmin, lonmax, latmax
                       
o.add_reader([reader_landmask, r1, r3])


####### Set configs

o.set_config('biology:min_settlement_age_seconds', 388800)  # minimum settlement age = 4.5 days (12C = 475200 sec / 5.5 days)
o.set_config('drift:max_age_seconds', 1556000) # maximum settlement age = 18 days  (12C = 1814000 sec / 21 days)
o.set_config('biology:settlement_in_habitat', False)
o.set_config('seed:ocean_only', True)


# Seeding elements uniformly in time from start to end
# The simulation duration is from the first seeding time, until either the provided "duration" or "end_time" (this is different than seeding time)
#o.seed_from_shapefile('ca.1.buff.0.5.shp', number=3000, radius=100,
#	time=[start_time, end_time])


####### Seed elements from sites with seeding radius of 100m


o.seed_elements(lon=-117.23, lat=32.66, number=5000, radius=100,
                time=[start_time, end_time])
                
o.seed_elements(lon=-117.25, lat=32.86, number=5000, radius=100,
                time=[start_time, end_time])

####### Run the simulation

if True:  # Set False to import from saved file
    # Run simulation with 1 hour internal calculation time step, and daily output
    o.run(time_step=timedelta(minutes=60), time_step_output=timedelta(hours=24), end_time=end_time,
          outfile='SD_2_18C_12.13.nc')
else: # When simulation is saved to file, it may later be re-imported with:
    import opendrift
    o = opendrift.open('SD_2_18C_12.13.nc')
    

####### Plot outputs

# Density animation
o.animation(filename='SD_2_18C_12.13_anim_density.mp4', density=True, show_elements=False,
            density_pixelsize_m=2500, vmin=0, vmax=100)
# Elements animation
o.animation(filename='SD_2_18C_12.13_animation.mp4')

# Standard plot output
o.plot(filename='SD_2_18Cs_12.13.plot.pdf')

# Create density output plot
d, dsub, dstr, lon, lat = o.get_density_array(pixelsize_m=3000)
strand_density = xr.DataArray(dstr[-1,:,:], coords={'lon_bin': lon[0:-1], 'lat_bin': lat[0:-1]})
o.plot(fast=True, background=strand_density.where(strand_density>0),
        vmin=0, vmax=20, clabel='Density of stranded elements',
        show_elements=False, linewidth=0, filename='SD_2_18C_12.13.strand.dens.pdf')

# Write output as .tif
o.write_geotiff(filename='SD_2_18C_12.13.dens.plot.tif', pixelsize_km=2)

# Write output as .nc with densities
o.write_netcdf_density_map(filename='SD_2_18C_12.13.dens.nc', pixelsize_m=3000)



#plt.hist(strand_density, label='Stranded density')
#plt.savefig('hist.png')

#plt.scatter(strand_density, lat, alpha=0.5)
#plt.savefig('scat.png')

#SD_2ens = o.get_property('strand_density')
#print(SD_2ens)

#with open('SD_2ens.filename.txt', 'w') as f:
#    print(SD_2ens, file=f)

#h=o.get_histogram(pixelsize_m=3000, weights=None, density=False)
#h.name = 'number'
#h.to_netcdf(filename='Nsites_12.13.hist.nc')

#b=h.sum(dim='time')
#o.plot(background=b.where(b>0), fast=True, show_elements=False, vmin=0, vmax=1000, clabel='First seeding')




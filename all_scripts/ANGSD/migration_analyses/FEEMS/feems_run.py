#!/usr/bin/env python

# base
import numpy as np
import pkg_resources
from sklearn.impute import SimpleImputer
from pandas_plink import read_plink

# viz
import matplotlib.pyplot as plt
import cartopy.crs as ccrs

# feems
from feems.utils import prepare_graph_inputs
from feems import SpatialGraph, Viz

# change matplotlib fonts
plt.rcParams["font.family"] = "Arial"
plt.rcParams["font.sans-serif"] = "Arial"

data_path = "/ocean/projects/deb200006p/enielsen/LGwork/eems"

# read the genotype data and mean impute missing data
(bim, fam, G) = read_plink("{}/ALL_noIP_maf0.05_pctind0.5_maxdepth15_pruned.R2".format(data_path))
(bim, fam, G) = read_plink("{}/ALL_noIP_maf0.05_pctind0.5_maxdepth15_pruned.R2".format(data_path))
imp = SimpleImputer(missing_values=np.nan, strategy="mean")
genotypes = imp.fit_transform((np.array(G)).T)

print("n_samples={}, n_snps={}".format(genotypes.shape[0], genotypes.shape[1]))

# setup graph
coord = np.loadtxt("{}/eems.noIP.coord".format(data_path))  # sample coordinates
outer = np.loadtxt("{}/eems.outer".format(data_path))  # outer coordinates
grid_path = "{}/ca.25mi.tri.shp".format(data_path)  # path to discrete global grid

# graph input files
outer, edges, grid, _ = prepare_graph_inputs(coord=coord, 
                                             ggrid=grid_path,
                                             translated=True, 
                                             buffer=0,
                                             outer=outer)
                                             
outer[:5, ]

edges[:5, ]

grid[:5, ]


sp_graph = SpatialGraph(genotypes, coord, grid, edges, scale_snps=True)

projection = ccrs.EquidistantConic(central_longitude=-123.26644976371841, central_latitude=38.524117267142564)

fig = plt.figure(dpi=300)
ax = fig.add_subplot(1, 1, 1, projection=projection)  
v = Viz(ax, sp_graph, projection=projection, edge_width=.5, 
        edge_alpha=1, edge_zorder=100, sample_pt_size=5, 
        obs_node_size=7.5, sample_pt_color="black", 
        cbar_font_size=10)
v.draw_map()
v.draw_samples()
v.draw_edges(use_weights=False)
v.draw_obs_nodes(use_ids=False)
fig.savefig('noIP.25.feems.png')

sp_graph.fit(lamb = 0.75)

fig = plt.figure(dpi=300)
ax = fig.add_subplot(1, 1, 1, projection=projection)  
v = Viz(ax, sp_graph, projection=projection, edge_width=.5, 
        edge_alpha=1, edge_zorder=100, sample_pt_size=20, 
        obs_node_size=7.5, sample_pt_color="black", 
        cbar_font_size=10)
v.draw_map()
v.draw_edges(use_weights=True)
v.draw_obs_nodes(use_ids=False) 
v.draw_edge_colorbar()
fig.savefig('noIP.lamb.0.75_25mi.png')


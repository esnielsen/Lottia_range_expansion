#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J Pfst_plot
#SBATCH -p RM-shared
#SBATCH -t 1:00:00
#SBATCH --ntasks-per-node=1
set -e
set -x
# To Run
# sbatch O_pfst_plot.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork

source A_01_config.sh

Rscript plotPfst.R pfsttest.out

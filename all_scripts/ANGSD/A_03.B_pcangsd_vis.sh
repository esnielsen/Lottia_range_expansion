#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J pcangsd.vis
#SBATCH -p RM-shared
#SBATCH -t 1:00:00
#SBATCH --ntasks-per-node=1
set -e
set -x
# To Run
# sbatch A_03.B_pcangsd_vis.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork

#prepare variables - avoid to modify
source A_01_config.sh

Rscript angsd/Rscripts/visualise_pca.r "$MIN_MAF" "$PERCENT_IND"

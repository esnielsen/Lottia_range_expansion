#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J maf_convert
#SBATCH -p RM-shared
#SBATCH -t 48:00:00
#SBATCH --ntasks-per-node=1
set -e
set -x
# To Run
# sbatch A_15_maf_convert.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork

source A_01.A_config.sh

Rscript Rscripts/extract_format_maf_pruned.r "$MIN_MAF" "$PERCENT_IND" "$MAX_DEPTH_FACTOR"

#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J outflank_2
#SBATCH -p RM-shared
#SBATCH -t 1:00:00
#SBATCH --ntasks-per-node=1
set -e
set -x
# To Run
# sbatch O_outflank_2.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork


Rscript 10_Rfiles/O_outflank_test.R 

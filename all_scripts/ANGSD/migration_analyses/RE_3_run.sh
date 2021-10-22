#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J rangeExp
#SBATCH -p RM-shared
#SBATCH -t 1:00:00
#SBATCH --ntasks-per-node=1
set -e
set -x
# To Run
# sbatch D_rangeExp.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork


Rscript 10_Rfiles/rangeExpansion.R

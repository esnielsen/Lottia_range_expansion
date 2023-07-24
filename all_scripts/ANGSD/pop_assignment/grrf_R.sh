#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J grrf_R
#SBATCH -p RM-shared
#SBATCH -t 48:00:00
#SBATCH --ntasks-per-node=40
set -e
set -x
# To Run
# sbatch grrf_R.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork/grrf

#bash script to run R script
# GRRF.R = analyses where we assign CA.n large individs to CA.c or CA.s source pops (based on large individs)
# GRRF2.R = where we assign CA.n small individs to CA.n, CA.c, CA.s (based on large individs) 

Rscript GRRF.R



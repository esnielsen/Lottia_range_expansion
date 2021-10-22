#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J mom_modselR
#SBATCH -p RM-shared
#SBATCH -t 1:00:00
#SBATCH --ntasks-per-node=1
set -e
set -x
# To Run
# sbatch M_modselR.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork/Moments

#in the following parameters, I can indicate lower number of samples per population as downsampling

Rscript AFS-analysis-with-moments/work/modSel_write.R contrast=p12 args="p1 p2 13 16 0.018 0.002"

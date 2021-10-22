#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J mom_best_mod
#SBATCH -p RM-shared
#SBATCH -t 1:00:00
#SBATCH --ntasks-per-node=1
set -e
set -x
# To Run
# sbatch M_best_mod.sh


cd /ocean/projects/deb200006p/enielsen/LGwork/Moments

Rscript AFS-analysis-with-moments/work/bestBoot_summary.EN.R bootRes=AFS-analysis-with-moments/p12.winboots

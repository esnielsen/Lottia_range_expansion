#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J mom_model_sum
#SBATCH -p RM-shared
#SBATCH -t 1:00:00
#SBATCH --ntasks-per-node=1
set -e
set -x
# To Run
# sbatch M_mod_summ.sh


cd /ocean/projects/deb200006p/enielsen/LGwork/Moments

Rscript AFS-analysis-with-moments/work/modSel_summary.R modselResult=AFS-analysis-with-moments/p12.modsel args="p1 p2 13 16 0.018 0.002"

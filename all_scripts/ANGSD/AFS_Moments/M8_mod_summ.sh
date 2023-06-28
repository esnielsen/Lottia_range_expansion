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
# sbatch M8_mod_summ.sh

cd /ocean/projects/deb200006p/enielsen/LGwork/Moments

#this will look at all the models you just ran and find the best ones! (keep same parameters as before)

Rscript AFS-analysis-with-moments/work/modSel_summary.R modselResult=p2.CA.Mex/CA.s.Mex.modsel args="CA.s Mex 48 48 0.0018 0.002" folded=TRUE

#this gives two output pdfs:
# pN.NC_modsel_allBoxplots.pdf - this is BIGGGG plot showing rankings of all models
# pN.NC_modsel_top10medians.pdf - this is plot showing ranking of only top 10 models

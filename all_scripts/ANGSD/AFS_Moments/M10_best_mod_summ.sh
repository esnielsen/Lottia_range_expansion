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
# sbatch M10_best_mod_summ.sh

# Call package
module load anaconda3
conda activate moments

cd /ocean/projects/deb200006p/enielsen/LGwork/Moments

# now we run this R script to summarize the parameters of the winning model and plot some plots
# here I include an editted version of the bestBoot_summary.R script -- it wasn't picking up the model parameters so I manually added them based on the model's python script

Rscript AFS-analysis-with-moments/work/bestBoot_summary.EN.2.R bootRes=pCA.n.c.NEW.winboots folded=TRUE

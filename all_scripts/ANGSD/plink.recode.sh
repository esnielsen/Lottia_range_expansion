#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J plink_bed
#SBATCH -p RM-shared
#SBATCH -t 20:00:00
#SBATCH --ntasks-per-node=1
set -e
set -x
# To Run
# sbatch plink.recode.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork

# Call package
module load anaconda3
eval "$(conda shell.bash hook)"
conda activate plink

plink --tfile angsd/03_saf_maf_gl_all/LD_leading_maf0.05_pctind0.5_maxdepth15 --recode --allow-extra-chr --out angsd/03_saf_maf_gl_all/LD_leading

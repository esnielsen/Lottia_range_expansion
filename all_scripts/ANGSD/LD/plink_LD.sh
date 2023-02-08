#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J plink_LD
#SBATCH -p RM-shared
#SBATCH -t 20:00:00
#SBATCH --ntasks-per-node=1
set -e
set -x
# To Run
# sbatch plink_LD.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork

# Call package
module load anaconda3
eval "$(conda shell.bash hook)"
conda activate plink


# calc ld with plink
# the tfile was created with A_19_saf_maf_regions.sh
plink --tfile angsd/03_saf_maf_gl_all/LD_trailing_maf0.05_pctind0.5_maxdepth15 --double-id --allow-extra-chr \
--set-missing-var-ids @:# \
--maf 0.05 --geno 0.1 --mind 0.5 \
--thin 0.1 -r2 gz --ld-window 100 --ld-window-kb 1000 \
--ld-window-r2 0 \
--make-bed --out LD_trailing_ld

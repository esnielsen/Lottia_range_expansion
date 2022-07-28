#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J plink_rda_B
#SBATCH -p RM-shared
#SBATCH -t 10:00:00
#SBATCH --ntasks-per-node=1
set -e
set -x
# To Run
# sbatch A_15B_raw_for_RDA.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork

# Call package
module load anaconda3
eval "$(conda shell.bash hook)"
conda activate plink

#prepare variables - avoid to modify
source A_01.A_config.sh

plink --tped angsd/plink/all_plink_maf"$MIN_MAF"_pctind"$PERCENT_IND"_maxdepth"$MAX_DEPTH_FACTOR"_pruned4rda.tped \
--tfam angsd/plink/all_plink_maf"$MIN_MAF"_pctind"$PERCENT_IND"_maxdepth"$MAX_DEPTH_FACTOR"_pruned4rda.tfam --allow-extra-chr \
--recode A --out angsd/plink/all_plink_maf"$MIN_MAF"_pctind"$PERCENT_IND"_maxdepth"$MAX_DEPTH_FACTOR"_pruned4rda.raw

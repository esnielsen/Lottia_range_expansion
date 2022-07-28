#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J bcf2vcf
#SBATCH -p RM-shared
#SBATCH --cpus-per-task=1
#SBATCH -t 20:00:00
set -e
set -x
# To Run
# sbatch A_16_bcf2vcf.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork/

#load program
module load bcftools/1.10.2

#prepare variables - avoid to modify
source A_01.A_config.sh

bcftools view angsd/03_saf_maf_gl_all/all_maf"$MIN_MAF"_pctind"$PERCENT_IND"_maxdepth"$MAX_DEPTH_FACTOR"_pruned.bcf -O v > angsd/03_saf_maf_gl_all/all_maf"$MIN_MAF"_pctind"$PERCENT_IND"_maxdepth"$MAX_DEPTH_FACTOR"_pruned.vcf


#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J outflank_1
#SBATCH -p RM-shared
#SBATCH -t 1:00:00
#SBATCH --ntasks-per-node=1
set -e
set -x
# To Run
# sbatch Outflank_1.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork

source A_01_config.sh

Rscript 10_Rfiles/OutFLANKpairwise_ENmod.R angsd/06_saf_maf_by_pop/BMR/BMR_maf0.05_pctind0.5_maxdepth152.mafs angsd/06_saf_maf_by_pop/C/C_maf0.05_pctind0.5_maxdepth152.mafs angsd/06_saf_maf_by_pop/KR/KR_maf0.05_pctind0.5_maxdepth152.mafs angsd/06_saf_maf_by_pop/SP/SP_maf0.05_pctind0.5_maxdepth152.mafs BMR_C_KR_SP_OutFLANKin.152.txt

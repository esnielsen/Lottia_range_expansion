#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J dummy.GT
#SBATCH -p RM-shared
#SBATCH -t 1:00:00
#SBATCH --ntasks-per-node=1
set -e
set -x
# To Run
# sbatch O_dummyGT.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork/Outliers

#run perl script adding GT to the vcf file created by angsd (here we use the vcf just for the core populations)
dummyGT.pl core_2_maf0.05_pctind0.5_maxdepth15.vcf > core.vcf

#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J bcf_2_vcf
#SBATCH -p RM
#SBATCH --cpus-per-task=1
#SBATCH -t 1:00:00
set -e
set -x
# To Run
# sbatch O_bcf_2_vcf.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork

# Call package
module load anaconda3
eval "$(conda shell.bash hook)"
conda activate bcftools 

bcftools view angsd/all_vcf_maf0.05_pctind0.5_maxdepth4.bcf > all.text.vcf

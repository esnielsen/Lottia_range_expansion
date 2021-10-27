#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J vcf_2_div
#SBATCH -p RM-shared
#SBATCH -t 1:00:00
#SBATCH --ntasks-per-node=1
set -e
set -x
# To Run
# sbatch Bayenv_vcf_to_div.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork

# Call package
module load anaconda2
eval "$(conda shell.bash hook)"
conda activate pyvcf.py2

python genomisc/popogeno/vcf_2_div.py all.text.vcf --popmap popMAP.txt --exclude_singletons -b

#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J vcflib_pFST_HP_CR
#SBATCH -p RM-shared
#SBATCH -t 48:00:00
#SBATCH --ntasks-per-node=40
set -e
set -x
# To Run
# sbatch O_pFST.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork/Outliers

# Call fastp package
module load anaconda3
eval "$(conda shell.bash hook)"
conda activate vcflib

pFst --target 31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60 --background 61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90 --file core.vcf --type GL > HP.CR.pfst.out

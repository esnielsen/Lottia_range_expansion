#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J vcflib_pFST
#SBATCH -p RM-shared
#SBATCH -t 1:00:00
#SBATCH --ntasks-per-node=1
set -e
set -x
# To Run
# sbatch pFST_4_run.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork

# Call package
module load anaconda3
eval "$(conda shell.bash hook)"
conda activate vcflib

pFst --target 0,1,5,7,9,11,13,15,17,19,21,23,25,27,29,31,33,35,37 --background 2,3,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34 --file all.GT.vcf --deltaaf 0 --type GP > pfsttest.out

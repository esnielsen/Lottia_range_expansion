#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J opendrift
#SBATCH -p RM-shared
#SBATCH -t 1:00:00
#SBATCH --ntasks-per-node=20
set -e
set -x
# To Run
# sbatch opdrift.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork/opendrift

# Call package
module load anaconda2
eval "$(conda shell.bash hook)"
conda activate opendrift

python opdrift_bivalve_S.py
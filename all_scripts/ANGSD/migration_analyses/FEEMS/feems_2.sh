#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J feems_CV
#SBATCH -p RM-shared
#SBATCH -t 48:00:00
#SBATCH --ntasks-per-node=20
set -e
set -x
# To Run
# sbatch feems_2.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork/eems

# Call package
module load anaconda2
eval "$(conda shell.bash hook)"
conda activate feems_e

python feems_cv.py

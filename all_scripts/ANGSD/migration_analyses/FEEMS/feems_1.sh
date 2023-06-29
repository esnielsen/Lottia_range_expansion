#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J feems_test
#SBATCH -p RM-shared
#SBATCH -t 48:00:00
#SBATCH --ntasks-per-node=20
set -e
set -x
# To Run
# sbatch feems_1.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork/eems

# Call package
module load anaconda2
eval "$(conda shell.bash hook)"
conda activate feems_e

# Run feems to get effective migration surface  
python feems_run.py

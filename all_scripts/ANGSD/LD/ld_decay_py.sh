#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J ld_py
#SBATCH -p RM-shared
#SBATCH -t 1:00:00
#SBATCH --ntasks-per-node=5
set -e
set -x
# To Run
# sbatch ld_decay_py.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork

#the -i input is the output from plink LD calculation, -o is output name
python3 ld_decay_calc.py -i LD_leading_ld.ld.gz -o LD_leading

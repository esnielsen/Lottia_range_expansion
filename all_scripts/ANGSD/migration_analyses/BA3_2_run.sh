#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J bayesass
#SBATCH -p RM-shared
#SBATCH -t 1:00:00
#SBATCH --ntasks-per-node=1
set -e
set -x
# To Run
# sbatch D_BA3.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork

./BayesAss3-SNPs/BA3-SNPS -F two.pop.gen.txt -l 1060

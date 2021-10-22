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
cd /ocean/projects/deb200006p/enielsen/LGwork


perl dummyGT.pl all.text.vcf

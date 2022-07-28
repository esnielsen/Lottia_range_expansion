#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J admix_out
#SBATCH -p RM-shared
#SBATCH -t 1:00:00
#SBATCH --ntasks-per-node=1
set -e
set -x
# To Run
# sbatch A_04.B_admix_all.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork/angsd/05_ngs_admix

(for log in `ls *.log`; do grep -Po 'like=\K[^ ]+' $log; done) > logfile


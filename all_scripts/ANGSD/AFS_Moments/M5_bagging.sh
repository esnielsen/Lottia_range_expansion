#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J mom_bagging
#SBATCH -p RM-shared
#SBATCH -t 1:00:00
#SBATCH --ntasks-per-node=1
set -e
set -x
# To Run
# sbatch M5_bagging.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork/Moments/p2.CA.Mex

#this script will 'bag' the bootstraps

SFSIZE="61 61" # 2N+1 for each population (randomly sampled each population to 30 individuals)
for B in `seq 1 100`; do
echo $SFSIZE >CA.s.Mex_${B}.sfs;
cat CA.s.Mex_${B} | awk '{for (i=1;i<=NF;i++){a[i]+=$i;}} END {for (i=1;i<=NF;i++){printf "%.3f", a[i]/NR; printf "\t"};printf "\n"}' >> CA.s.Mex_${B}.sfs;
done

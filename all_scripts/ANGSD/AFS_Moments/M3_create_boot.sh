#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J mom_boot1
#SBATCH -p RM-shared
#SBATCH -t 2:00:00
#SBATCH --ntasks-per-node=1
set -e
set -x
# To Run
# sbatch M_boot_1.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork


>b100
for B in `seq 1 100`; do
echo "sleep $B && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_$B">>b100;
done

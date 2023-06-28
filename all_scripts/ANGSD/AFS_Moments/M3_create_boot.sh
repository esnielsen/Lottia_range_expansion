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

#bootstrap 100 times to account for variation in SFSs (here shown just for CA.s Mex comparison)
>b100
for B in `seq 1 100`; do
echo "sleep $B && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_$B">>b100;
done

#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J mom_safs
#SBATCH -p RM-shared
#SBATCH -t 2:00:00
#SBATCH --ntasks-per-node=4
set -e
set -x
# To Run
# sbatch M_create_sfs2.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork

TODO='-doSaf 1 -doMajorMinor 1 -doMaf 1 -doPost 1 -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa'
#angsd -b angsd/02_info/BMRbam.filelist -sites finalsites_0.1_unlinked  -GL 1 -P 4 $TODO -out BMR 
angsd -sites finalsites_0.1_unlinked -b angsd/02_info/Cbam.filelist -GL 1 -P 4 $TODO -out C 

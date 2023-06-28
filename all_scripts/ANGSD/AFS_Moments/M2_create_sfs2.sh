#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J mom_safs
#SBATCH -p RM-shared
#SBATCH -t 48:00:00
#SBATCH --ntasks-per-node=20
set -e
set -x
# To Run
# sbatch M1_create_sfs2.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork

TODO='-doSaf 1 -doMajorMinor 1 -doMaf 1 -doPost 1 -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa'

angsd -sites Moments/moments.sites -b 02_info/p.CA.n.30.list -GL 1 -P 20 $TODO -out Moments/p1.CA.n

angsd -sites Moments/moments.sites -b 02_info/p.CA.c.30.list -GL 1 -P 20 $TODO -out Moments/p1.CA.c

angsd -sites Moments/moments.sites -b 02_info/p.CA.s.30.list -GL 1 -P 20 $TODO -out Moments/p2.CA.s

angsd -sites Moments/moments.sites -b 02_info/p.Mex.30.list -GL 1 -P 20 $TODO -out Moments/p2.Mex

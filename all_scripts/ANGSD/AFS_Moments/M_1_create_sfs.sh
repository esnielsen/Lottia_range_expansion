#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J angsd2sfs1
#SBATCH -p RM-shared
#SBATCH -t 2:50:00
#SBATCH --ntasks-per-node=4
set -e
set -x
# To Run
# sbatch M_create_sfs1.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork

#NB: make sure you use the pruned sites list to create sfs
#below I have 2 comparisons: CA.n.c (CA north vs. core) and CA.s.Mex (CA south vs. Mex)

FILTERS="-uniqueOnly 1 -skipTriallelic 1 -minMapQ 30 -minQ 20 -doHWE 1 -hetbias_pval 1e-5 -minInd 120 -sb_pval 1e-5"
# I didn't use -maxHetFreq 0.5 because it didn't work with version of angsd
TODO='-doMajorMinor 1 -doMaf 1 -dosnpstat 1 -doPost 2'

angsd -b 02_info/CA.s.Mex.bam.filelist -sites 02_info/sites_ALL_2_maf0.05_pctind0.5_maxdepth15_R2.pruned -GL 1 -P 40 $FILTERS $TODO -out Moments/CA.s.Mex.sites 
zcat Moments/CA.s.Mex.sites.mafs.gz | cut -f 1,2 | tail -n +2 > Moments/finalsites_CA.s.Mex
angsd sites index Moments/finalsites_CA.s.Mex

angsd -b 02_info/CA.n.c.bam.filelist -sites 02_info/sites_ALL_2_maf0.05_pctind0.5_maxdepth15_R2.pruned -GL 1 -P 40 $FILTERS $TODO -out Moments/CA.n.c.sites 
zcat Moments/CA.n.c.sites.mafs.gz | cut -f 1,2 | tail -n +2 > Moments/finalsites_CA.n.c
angsd sites index Moments/finalsites_CA.n.c

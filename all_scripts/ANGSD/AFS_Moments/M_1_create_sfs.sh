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

GRate=0.8 # genotyping rate filter - a site must be genotyped in this fraction of all samples.
#NB: when I do the cat below, go to the file and delete the empty row, and get # of inds, then calculate 80% to get minIND
#cat 02_info/BMRbam.filelist 02_info/Cbam.filelist > p12.bams

#NB: make sure you use the pruned sites list to create sfs
FILTERS="-uniqueOnly 1 -skipTriallelic 1 -minMapQ 30 -minQ 25 -doHWE 1 -hetbias_pval 1e-5 -minInd 14 -sb_pval 1e-5"
# I deleted -maxHetFreq 0.5 because with this small sample size the heterozygosity was too low
TODO='-doMajorMinor 1 -doMaf 1 -dosnpstat 1 -doPost 2'
angsd -b angsd/p12.bams -sites angsd/02_info/sites_all_maf0.05_pctind0.5_maxdepth4_pruned -GL 1 $FILTERS $TODO -P 4 -out 0.1_unlinked.sites
zcat 0.1_unlinked.sites.mafs.gz | cut -f 1,2 | tail -n +2 > finalsites_0.1_unlinked
angsd sites index finalsites_0.1_unlinked

#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J angsd_LD
#SBATCH -p RM-shared
#SBATCH -t 1:00:00
#SBATCH --ntasks-per-node=1
set -e
set -x
# To Run
# sbatch A_8_angsd_LD.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork

NB_CPU=1 #change accordingly in SLURM header
REGIONS="-rf angsd/02_info/regions_all_maf0.05_pctind0.5_maxdepth4"

source A_01_config.sh

####Calculate the MAF and GL

angsd -P $NB_CPU -nQueueSize 50 -doPlink 2 -doMaf 1 -doCounts 1 \
-GL 2 -doMajorMinor 1 -doGeno -4 -doPost 1 -postCutoff 0.8 \
-anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -uniqueOnly 1 -remove_bads 1 -skipTriallelic 1 -only_proper_pairs 1 -minMapQ 30 -minQ 20 $REGIONS \
-minInd 3 -minMaf $MIN_MAF -setMaxDepth 12 -b angsd/02_info/bam.filelist \
-out angsd/09_plink/all_plink_maf"$MIN_MAF"_pctind"$PERCENT_IND"_maxdepth"$MAX_DEPTH_FACTOR"

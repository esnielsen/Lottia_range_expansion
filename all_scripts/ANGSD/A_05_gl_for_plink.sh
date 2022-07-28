#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J angsd_LD
#SBATCH -p EM
#SBATCH -t 28:00:00
#SBATCH --ntasks-per-node=24
set -e
set -x
# To Run
# sbatch A_05_gl_for_plink.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork

NB_CPU=24 #change accordingly in SLURM header
REGIONS="-rf 02_info/regions_all_maf0.05_pctind0.5_maxdepth30"

source A_01.A_config.sh

####Calculate the MAF and GL, with Plink output for LD pruning

angsd -P $NB_CPU -nQueueSize 50 -doPlink 2 -doMaf 1 -doCounts 1 \
-GL 2 -doMajorMinor 1 -doGeno -4 -doPost 1 -postCutoff 0.8 \
-anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -uniqueOnly 1 -remove_bads 1 -skipTriallelic 1 -only_proper_pairs 1 -minMapQ 30 -minQ 20 $REGIONS \
-minInd 150 -minMaf $MIN_MAF -setMaxDepth 960 -b 02_info/bam.filelist \
-out angsd/plink/all_plink_maf"$MIN_MAF"_pctind"$PERCENT_IND"_maxdepth"$MAX_DEPTH_FACTOR"

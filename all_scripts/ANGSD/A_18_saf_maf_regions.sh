#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J angsd_gl_s.core
#SBATCH -p RM-shared
#SBATCH -t 48:00:00
#SBATCH --mem-per-cpu=2000M
#SBATCH --ntasks-per-node=40

set -e
set -x
# To Run
# sbatch A_18_saf_maf_regions.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork

# Call package (DELETE This section and next if using singularity)
module load anaconda3
eval "$(conda shell.bash hook)"
conda activate ANGSD

NB_CPU=40 #change accordingly in SLURM header

# NB: make sure to change minInd 1/2 # of individuals and MaxDepth to 15X individs for each region
#Working script
angsd -P $NB_CPU -nQueueSize 100 \
-doMaf 1 -dosaf 1 -GL 2 -doGlf 2 -doMajorMinor 1 -doCounts 1 -doGeno 2 -doPlink 2 -doPost 1 -postCutoff 0.8 \
-anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -remove_bads 1 -skipTriallelic 1 -SNP_pval 1e-6 -uniqueOnly 1 -only_proper_pairs 1 -minMapQ 30 -minQ 20 \
-minInd 90 -minMaf 0.05 -setMaxDepth 2700 \
-b 02_info/bam.s.core.filelist \
-out angsd/03_saf_maf_gl_all/LD_s.core_maf"$MIN_MAF"_pctind"$PERCENT_IND"_maxdepth"$MAX_DEPTH_FACTOR"

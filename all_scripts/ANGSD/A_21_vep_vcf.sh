#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J angsd_vep_vcf
#SBATCH -p RM-shared
#SBATCH -t 48:00:00
#SBATCH -o ./Reports/output.%j.out # STDOUT
#SBATCH --ntasks-per-node=40
set -e
set -x
# To Run
# sbatch A_21_vep_vcf.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork

# Call package
module load anaconda3
eval "$(conda shell.bash hook)"
conda activate ANGSD

NB_CPU=40 #change accordingly in SLURM header

#209 individs in bam file- minIND = 80% =~165

#prepare variables - avoid to modify
source A_01.A_config.sh

angsd -P $NB_CPU -nQueueSize 50 \
-dosaf 1 -GL 2 -doGlf 2 -doMajorMinor 1 -doMaf 1 -doGeno 2 -doCounts 1 -doPost 1 -doBcf 1 -doPlink 2 -postCutoff 0.8 \
-anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa \
-minMapQ 30 -minQ 20 -minInd 165 -setMaxDepth 3100 -uniqueOnly 1 -remove_bads 1 -only_proper_pairs 1 -skipTriallelic 1 \
-b 02_info/vep.bams.filelist \
-out angsd/03_saf_maf_gl_all/regions/vep_lead_maf"$MIN_MAF"_pctind"$PERCENT_IND"_maxdepth"$MAX_DEPTH_FACTOR"_pruned.R2

#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J angsd_gl_prune
#SBATCH -p RM-shared
#SBATCH -t 8:00:00
#SBATCH --ntasks-per-node=5
set -e
set -x
# To Run
# sbatch A_02_saf_maf_gl_PRUNE.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork


###this script will work on all bamfiles and calculate saf, maf & genotype likelihood
#maybe edit
NB_CPU=5 #change accordingly in SLURM header
#REGIONS="-rf 02_info/regions_25kb_100snp.txt" #optional edit with your region selected file
#REGIONS=" " # to remove the options to focus on a limited number of regions


#prepare variables - avoid to modify
source A_01_config.sh

echo " Calculate the SAF, MAF and GL for all individuals listed in 02_info/bam.filelist"
echo "keep loci with at leat one read for n individuals = $MIN_IND, which is $PERCENT_IND % of total $N_IND individuals"
echo "filter on allele frequency = $MIN_MAF"

###get the list of pruned sites
#you need to run first the script A_6_plink_prune to extract the LD-pruned position
#this R script will format the list and angsd will index it
INPUT_plink=angsd/09_plink/all_plink_maf"$MIN_MAF"_pctind"$PERCENT_IND"_maxdepth"$MAX_DEPTH_FACTOR".pruned.prune.in
INPUT_angsd=angsd/02_info/sites_all_maf"$MIN_MAF"_pctind"$PERCENT_IND"_maxdepth"$MAX_DEPTH_FACTOR"

Rscript 01_scripts/Rscripts/make_site_list_pruned.r "$INPUT_plink" "$INPUT_angsd"
angsd sites index "$INPUT_angsd"_pruned

####Calculate the SAF, MAF and GL
#we now use a list of snp corresponding to the LD-pruned snp by plink and removing the areas of inversions

angsd -P $NB_CPU -nQueueSize 50 \
-doMaf 1 -dosaf 1 -GL 2 -doGlf 2 -doMajorMinor 3 -doGeno 2 -doPost 1 \
-anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa \
-minMapQ 30 -minQ 20 -minInd 3 -uniqueOnly 1 -remove_bads 1 -only_proper_pairs 1 -skipTriallelic 1 \
-sites angsd/02_info/sites_all_maf0.05_pctind0.5_maxdepth4_pruned \
-rf angsd/02_info/regions_all_maf0.05_pctind0.5_maxdepth4 \
-b angsd/02_info/bam.filelist \
-out angsd/03_saf_maf_gl_all/all_maf"$MIN_MAF"_pctind"$PERCENT_IND"_maxdepth"$MAX_DEPTH_FACTOR"_pruned

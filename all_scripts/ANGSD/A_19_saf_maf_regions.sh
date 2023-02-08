#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J angsd_noLD_trail.sites
#SBATCH -p RM-shared
#SBATCH -t 48:00:00
#SBATCH -o ./Reports/output.%j.out # STDOUT
#SBATCH --ntasks-per-node=40
set -e
set -x
# To Run
# sbatch A_19_saf_maf_regions.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork


###this script will work on all bamfiles and calculate saf, maf & genotype likelihood

NB_CPU=40 #change accordingly in SLURM header
#REGIONS="-rf 02_info/regions_25kb_100snp.txt" #optional edit with your region selected file


#prepare variables - avoid to modify
source A_01.A_config.sh

echo " Calculate the SAF, MAF and GL for all individuals listed in 02_info/bam.filelist"
echo "keep loci with at leat one read for n individuals = $MIN_IND, which is $PERCENT_IND % of total $N_IND individuals"
echo "filter on allele frequency = $MIN_MAF"


####Calculate the SAF, MAF and GL
#we now use a list of snp corresponding to the LD-pruned snps by plink to create final SNP set

# make sure to change minInd!
# not sure whether to include filters:  -hetbias_pval 1e-5 -sb_pval 1e-5 -dosnpstat 1 -doHWE 1 

angsd -P $NB_CPU -nQueueSize 50 \
-doMaf 1 -dosaf 1 -GL 2 -doGlf 2 -doMajorMinor 3 -doGeno 2 -doCounts 1 -doPost 1 -dovcf 1 -doPlink 2 -postCutoff 0.8 \
-anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa \
-minMapQ 30 -minQ 20 -minInd 52 -setMaxDepth 1500 -uniqueOnly 1 -remove_bads 1 -only_proper_pairs 1 -skipTriallelic 1 \
-sites 02_info/sites_ALL_2_maf0.05_pctind0.5_maxdepth15 \
-rf 02_info/regions_ALL_2_maf0.05_pctind0.5_maxdepth15 \
-b 02_info/bam.trailing.filelist \
-out angsd/03_saf_maf_gl_all/regions/trailing_2_maf"$MIN_MAF"_pctind"$PERCENT_IND"_maxdepth"$MAX_DEPTH_FACTOR"

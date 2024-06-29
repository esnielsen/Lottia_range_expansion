#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J filt_vep_out
#SBATCH -p RM-shared
#SBATCH --cpus-per-task=1
#SBATCH -t 48:00:00
set -e
set -x
# To Run
# sbatch filt_vep_out.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork/gen_load/ensembl-vep

#filter vep output to make missense sites list for angsd
grep -w 'missense_variant' variant_effect_output.txt > miss.vep.out.txt

cat miss.vep.out.txt | awk '{ print $1 }' > miss.vep.col.txt

cat miss.vep.col.txt | awk  '{gsub("_","\t",$0); print;}' > mis.vep.filt.txt

cat mis.vep.filt.txt | awk  '{gsub("/","\t",$0); print;}' > miss.vep.filt1.txt

cat miss.vep.filt1.txt | awk  '{gsub("LOTGIsca\t","LOTGIsca_",$0); print;}' > miss.vep.sites


#do same for synonomous sites
grep -w 'synonymous_variant' variant_effect_output.txt > syn.vep.out.txt

cat syn.vep.out.txt | awk '{ print $1 }' > syn.vep.col.txt

cat syn.vep.col.txt | awk  '{gsub("_","\t",$0); print;}' > syn.vep.filt.txt

cat syn.vep.filt.txt | awk  '{gsub("/","\t",$0); print;}' > syn.vep.filt1.txt

cat syn.vep.filt1.txt | awk  '{gsub("LOTGIsca\t","LOTGIsca_",$0); print;}' > syn.vep.sites

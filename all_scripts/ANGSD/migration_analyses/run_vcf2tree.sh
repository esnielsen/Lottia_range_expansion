#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J vcf2treemix
#SBATCH -p RM-shared
#SBATCH -t 10:00:00
set -e
set -x
# To Run
# sbatch run_vcf2tree.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork/treemix


#load packages
module load anaconda3
eval "$(conda shell.bash hook)"
conda activate plink

module load vcftools/0.1.16

module load python
 
clust=test.pruned.clust

file=test.pruned.vcf.gz

# Use VCFtools to make a map and a ped file, using only bi-allelic SNPs with mac 2 (also creates a log file)


 # Get a .map and .ped file
 vcftools --gzvcf $file \
         --plink --mac 2 --remove-indels --max-alleles 2 \
         --out $file


# Adjust the map file to allow for non-human chromosome names (else the new plink version struggles)
awk -F"\t" '{
        split($2,chr,":")
	$1="1"
	$2="1:"chr[2]
        print $0
}' ${file}.map > better.map
mv better.map ${file}.map

# convert it to a stratified frq file, also creates .bed, .bim, .fam, .log, .nosex
plink --file $file --make-bed --out $file --allow-no-sex --allow-extra-chr 0
plink --bfile $file --freq --missing --within test.pruned.clust --out $file --allow-no-sex --allow-extra-chr 0

# zip it
gzip $file".frq.strat"


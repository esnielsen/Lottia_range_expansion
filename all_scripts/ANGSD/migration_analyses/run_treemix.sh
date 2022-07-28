#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J treemix
#SBATCH -p RM-shared
#SBATCH -t 10:00:00
set -e
set -x
# To Run
# sbatch run_treemix.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork/treemix


#load packages
module load anaconda3
eval "$(conda shell.bash hook)"
conda activate treemix

# run treemix for 0-10 migration events, with the tree rooted in the southernmost population (BA)
# k = numbers of SNPs to use in the block jackknife (500 seems about standard to ensure that LD structure does not lead to "double-counting" of SNPs)

treemix -i test.pruned.vcf.gz.treemix.frq.gz -m 0 -o tree_outs/test.pruned.vcf.gz.0 -root BA -k 500 

treemix -i test.pruned.vcf.gz.treemix.frq.gz -m 1 -o tree_outs/test.pruned.vcf.gz.1 -root BA -k 500 

treemix -i test.pruned.vcf.gz.treemix.frq.gz -m 2 -o tree_outs/test.pruned.vcf.gz.2 -root BA -k 500

treemix -i test.pruned.vcf.gz.treemix.frq.gz -m 3 -o tree_outs/test.pruned.vcf.gz.3 -root BA -k 500

treemix -i test.pruned.vcf.gz.treemix.frq.gz -m 4 -o tree_outs/test.pruned.vcf.gz.4 -root BA -k 500

treemix -i test.pruned.vcf.gz.treemix.frq.gz -m 5 -o tree_outs/test.pruned.vcf.gz.5 -root BA -k 500

treemix -i test.pruned.vcf.gz.treemix.frq.gz -m 5 -o tree_outs/test.pruned.vcf.gz.6 -root BA -k 500

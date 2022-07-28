#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J treemix_M
#SBATCH -p RM-shared
#SBATCH -t 10:00:00
set -e
set -x
# To Run
# sbatch treemix_mig.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork/treemix


#load packages
module load anaconda3
eval "$(conda shell.bash hook)"
conda activate treemix

perl treemix_fraction.pl test.pruned.vcf.gz.0
perl treemix_fraction.pl test.pruned.vcf.gz.1
perl treemix_fraction.pl test.pruned.vcf.gz.2
perl treemix_fraction.pl test.pruned.vcf.gz.3
perl treemix_fraction.pl test.pruned.vcf.gz.4
perl treemix_fraction.pl test.pruned.vcf.gz.5
perl treemix_fraction.pl test.pruned.vcf.gz.6

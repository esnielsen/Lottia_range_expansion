#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J filt.beagle
#SBATCH -p RM-shared
#SBATCH -t 48:00:00
#SBATCH --ntasks-per-node=1
set -e
set -x
# To Run
# sbatch filt.beagle.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork/angsd/03_saf_maf_gl_all/pruned

# neut.list.txt is like the nuetral snp sites file, but with sites listed per line as "Lottia_CHROM_POS"
# the -1 means look at first column, and minus means exclude snps in list

cat ALL_2_maf0.05_pctind0.5_maxdepth15_pruned.R2.beagle | java -jar filterlines.jar -1 neuts.list.txt > ALL_2_OUTS.beagle

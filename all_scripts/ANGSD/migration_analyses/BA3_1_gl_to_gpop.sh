#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J gl2gpop
#SBATCH -p RM-shared
#SBATCH -t 1:00:00
#SBATCH --ntasks-per-node=1
set -e
set -x
# To Run
# sbatch BA3_1_gl_to_gpop.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork

perl PopGenTools_3.00.pl GENEPOP -g angsd/03_saf_maf_gl_all/all_maf0.05_pctind0.5_maxdepth4_pruned.geno -p -n 6 -s 174028 -o test.genepop

#Options: -g FILE raw genotype probability generated using ANGSD "-doGeno 2" (e.g. Contig29 294 0 1 2 -1 -1 2 1....)
#         -n INT  sample size
#         -s INT  number of loci
#         -o FILE outfile name
#         -h INT  1 = all sites; 0 = one snp per contig [1]
#         -p      Jason Bragg method for choosing SNPs: 1) Selects one snp per contig; 2) A SNP must have a genotype called in all samples; 3) It must be parsimony informative (minor allele present in > 1 sample) - note this has been modified below; 4) If multiple SNPs in a contig fulfil these criteria, one SNP is chosen at random. If -p is not used, all sites will be converted. 
#Note: you can only choose either -h or -p

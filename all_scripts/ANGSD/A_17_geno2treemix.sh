#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J geno2teemix
#SBATCH -p RM-shared
#SBATCH -t 1:00:00
#SBATCH --ntasks-per-node=4
set -e
set -x
# To Run
# sbatch A_17_geno2treemix.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork

NB_CPU=4 #change accordingly in SLURM header

source A_01.A_config.sh

perl PopGenTools_3.00.pl TREEMIX -g angsd/03_saf_maf_gl_all/all_plink_maf"$MIN_MAF"_pctind"$PERCENT_IND"_maxdepth"$MAX_DEPTH_FACTOR"_pruned.geno -o test.tree -p -n 192 -z treemix/tree.pop.txt -w 7 -s 9


#	      -g FILE Raw genotype probability generated using ANGSD "-doGeno 2" (e.g. Contig29 294 0 1 2 -1 -1 2 1....)
#         -o FILE Outfile perfix
#         -p      Randomly selects one snp per contig, kick off non-varibale sites
#         -n INT  Sample size (need -p)
#         -z FILE population file (two columns 1st popid 2nd sample size)
#         -w INT  Number of populations
#         -s INT  Number of sites

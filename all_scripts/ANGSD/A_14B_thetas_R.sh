#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J angsd_theta_r
#SBATCH -p RM-shared
#SBATCH -t 1:00:00
#SBATCH --ntasks-per-node=1
set -e
set -x
# To Run
# sbatch A_14B_thetas_R.sh

#theta 14A script gives a file with several lines while the expected sfs has just one line. So we use the R script to sum accross all columns
#this R script will output a file whose name is the same but without the suffix "NSITES" (500000 in our defaut settings)
  
#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork

#prepare variables - avoid to modify
source A_01.A_config.sh

#maybe edit
NB_CPU=1 #change accordingly in SLURM header
NSITES=500000 #to make realSFS goes faster -reduce the number of sites considered 
POP_FILE1=02_info/pop.txt #choose on which list of pop run the analyses

cat $POP_FILE1 | while read i
do

file=angsd/08_thetas/"$i"_pctind"$PERCENT_IND"_maxdepth"$MAX_DEPTH_FACTOR"."$NSITES"

Rscript Rscripts/sum_sites_2dsfs.r "$file"

done

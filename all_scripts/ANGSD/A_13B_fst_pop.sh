#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J angsd_FST_r
#SBATCH -p RM-shared
#SBATCH -t 1:00:00
#SBATCH --ntasks-per-node=1
set -e
set -x
# To Run
# sbatch A_06_fst_R.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork

#prepare variables - avoid to modify
source A_01_config.sh

#maybe edit
NB_CPU=1 #change accordingly in SLURM header
NSITES=500000 
GROUP=pop 
POP_FILE1=angsd/02_info/"$GROUP".txt #choose on which list of pop run the analyses


# Run pairwise FST R script for all populations listed

for i in $(seq $num_pops)
do
	pop1=$(cat "$POP_FILE1" | head -"$i" | tail -1)
	for j in $(seq $[ $i + 1 ] $num_pops)
	do
		pop2=$(cat "$POP_FILE1" | head -"$j" | tail -1)
		echo "FST between $pop1 and $pop2"
		echo "$pop1"
		echo "$pop2"
    
file=07_fst_by_pop_pair/$GROUP/"$pop1"_"$pop2"_maf"$MIN_MAF"_pctind"$PERCENT_IND"_maxdepth"$MAX_DEPTH_FACTOR"."$NSITES"

Rscript 01_scripts/Rscripts/sum_sites_2dsfs.r "$file"

## Below is what I've actually done...
file=angsd/07_fst_by_pop_pair/$GROUP/fold_nMAF/BMR_C_maf0.05_pctind0.5_maxdepth4_fold_nMAF.500000

Rscript angsd/Rscripts/sum_sites_2dsfs.r "$file"

#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J angsd_FST_2
#SBATCH -p RM-shared
#SBATCH -t 1:00:00
#SBATCH --ntasks-per-node=1
set -e
set -x
# To Run
# sbatch A_06_fst_pop_nMAF_2.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork

#prepare variables - avoid to modify
source A_01_config.sh

#maybe edit
NB_CPU=1 #change accordingly in SLURM header
NSITES=500000 #to make realSFS goes faster -reduce the number of sites considered 
GROUP=pop #this relates to the 'pop.txt' file in the '02_info' directory
POP_FILE1=angsd/02_info/"$GROUP".txt #choose on which list of pop run the analyses

# calculate FST
#prepare variables - avoid to modify
num_pops=$(wc -l "$POP_FILE1" | cut -d " " -f 1)

# Estimate pairwise FST for all populations listed

for i in $(seq $num_pops)
do
	pop1=$(cat "$POP_FILE1" | head -"$i" | tail -1)
	for j in $(seq $[ $i + 1 ] $num_pops)
	do
		pop2=$(cat "$POP_FILE1" | head -"$j" | tail -1)
		echo "FST between $pop1 and $pop2"
		echo "$pop1"
		echo "$pop2"
		
		echo " prepare the fst for easy window analysis etc"
		realSFS fst index angsd/07_fst_by_pop_pair/$GROUP/"$pop1"_saf.saf.idx \
angsd/07_fst_by_pop_pair/$GROUP/"$pop2"_saf.saf.idx \
-sfs angsd/07_fst_by_pop_pair/$GROUP/nfold_nMAF/"$pop1"_"$pop2"_maf"$MIN_MAF"_pctind"$PERCENT_IND"_maxdepth"$MAX_DEPTH_FACTOR"_nMAF."$NSITES".2dsfs \
-P $NB_CPU -fstout angsd/07_fst_by_pop_pair/$GROUP/"$pop1"_"$pop2"_maf"$MIN_MAF"_pctind"$PERCENT_IND"_maxdepth"$MAX_DEPTH_FACTOR"_nMAF

		echo "print SFS priori for each position"
		realSFS fst print angsd/07_fst_by_pop_pair/$GROUP/"$pop1"_"$pop2"_maf"$MIN_MAF"_pctind"$PERCENT_IND"_maxdepth"$MAX_DEPTH_FACTOR"_nMAF.fst.idx \
-P $NB_CPU > angsd/07_fst_by_pop_pair/$GROUP/"$pop1"_"$pop2"_maf"$MIN_MAF"_pctind"$PERCENT_IND"_maxdepth"$MAX_DEPTH_FACTOR"_nMAF.bypos.sfs
		
		echo "get the global estimate of FST throughout the genome"
		realSFS fst stats angsd/07_fst_by_pop_pair/$GROUP/"$pop1"_"$pop2"_maf"$MIN_MAF"_pctind"$PERCENT_IND"_maxdepth"$MAX_DEPTH_FACTOR"_nMAF.fst.idx \
-P $NB_CPU > angsd/07_fst_by_pop_pair/$GROUP/"$pop1"_"$pop2"_maf"$MIN_MAF"_pctind"$PERCENT_IND"_maxdepth"$MAX_DEPTH_FACTOR"_nMAF.fst
		
		echo "calculate FST by slidingwindow, window size=$WINDOW and step=$WINDOW_STEP, as given in 01_config.sh"
		realSFS  fst stats2 angsd/07_fst_by_pop_pair/$GROUP/"$pop1"_"$pop2"_maf"$MIN_MAF"_pctind"$PERCENT_IND"_maxdepth"$MAX_DEPTH_FACTOR"_nMAF.fst.idx \
-win $WINDOW -step $WINDOW_STEP -P $NB_CPU > angsd/07_fst_by_pop_pair/$GROUP/"$pop1"_"$pop2"_maf"$MIN_MAF"_pctind"$PERCENT_IND"_maxdepth"$MAX_DEPTH_FACTOR"_nMAF.slidingwindow
	done
done

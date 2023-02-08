#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J pair_dxy
#SBATCH -p RM-shared
#SBATCH -t 48:00:00
#SBATCH -o ./Reports/output.%j.out # STDOUT
#SBATCH --ntasks-per-node=1
set -e
set -x
# To Run
# sbatch A_20_dxy.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork

GROUP=pop #the subgroup on whcih we are making the fst comparison 
POP_FILE1=02_info/"$GROUP".txt #choose on which list of pop run the analyses

#get pops to compare
num_pops=$(wc -l "$POP_FILE1" | cut -d " " -f 1)

# Estimate pairwise dxy for all populations listed

for i in $(seq $num_pops)
do
	pop1=$(cat "$POP_FILE1" | head -"$i" | tail -1)
	for j in $(seq $[ $i + 1 ] $num_pops)
	do
		pop2=$(cat "$POP_FILE1" | head -"$j" | tail -1)
		echo "DXY between $pop1 and $pop2"
		echo "$pop1"
		echo "$pop2"

perl getDxy.pl --pop1maf angsd/06_saf_maf_by_pop/"$pop1"/"$pop1"_maf0.05_pctind0.5_maxdepth15.sites.mafs --pop2maf angsd/06_saf_maf_by_pop/"$pop2"/"$pop2"_maf0.05_pctind0.5_maxdepth15.sites.mafs --minInd 10

	done
done

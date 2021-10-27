#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J angsd_FST_nMAF
#SBATCH -p RM-shared
#SBATCH -t 3:00:00
#SBATCH --ntasks-per-node=10
set -e
set -x
# To Run
# sbatch A_13A_fst_pop.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork

###this script will 
#1 make a subset of bamlist to have equal nb of samples
#2 calculate the saf by pop
#3 calculate 2dSFS and FST
#it uses the last version of angsd (unfold for saf and fold for realSFS)

#prepare variables - avoid to modify
source A_01_config.sh

#can edit
NB_CPU=10 #change accordingly in SLURM header
NSITES=500000 #to make realSFS goes faster -reduce the number of sites considered 
GROUP=pop #the subgroup on whcih we are making the fst comparison 
POP_FILE1=angsd/02_info/"$GROUP".txt #choose on which list of pop run the analyses
MIN_IND=3 #edit based on the 'A_02.C_min_ind_per_pop.sh' output

#make a folder in which write new results
#mkdir angsd/07_fst_by_pop_pair/$GROUP

#1 subset bamfilelist (only if you want to subsample to same # of individuals per pop)
Rscript angsd/Rscripts/subset_random_Nind.r "$GROUP"

#2 do saf for all population listed (remember we are making SFS here so we don't want to have MAF or p-value filters)
cat $POP_FILE1 | while read i
do
echo $i

echo "working on pop $i, $N_IND individuals, will use the sites file provided"
echo "will filter for sites with at least one read in $MIN_IND individuals, which is $PERCENT_IND of the total"

angsd -P $NB_CPU -nQueueSize 50 \
-doMaf 1 -dosaf 1 -doMajorMinor 1 -GL 2 \
-anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa \
-uniqueOnly 1 -remove_bads 1 -skipTriallelic 1 -only_proper_pairs 1 -minInd $MIN_IND -minMapQ 30 -minQ 20 \
-b angsd/07_fst_by_pop_pair/$GROUP/"$i"subsetbam.filelist -out angsd/07_fst_by_pop_pair/$GROUP/"$i"_saf
done

# 3 Create SFSs
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
		
		echo "calcualte the 2dsfs priors"
realSFS  angsd/07_fst_by_pop_pair/$GROUP/"$pop1"_saf.saf.idx \
angsd/07_fst_by_pop_pair/$GROUP/"$pop2"_saf.saf.idx \
-P $NB_CPU -maxIter 30 -nSites $NSITES > angsd/07_fst_by_pop_pair/$GROUP/nfold_nMAF/"$pop1"_"$pop2"_maf"$MIN_MAF"_pctind"$PERCENT_IND"_maxdepth"$MAX_DEPTH_FACTOR"."$NSITES"
		

	done
done




#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J angsd_theta_prep
#SBATCH -p RM-shared
#SBATCH -t 48:00:00
#SBATCH --ntasks-per-node=8
set -e
set -x
# To Run
# sbatch A_14A_thetas.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork

NB_CPU=8 #change accordingly in SLURM header
NSITES=500000 #to make realSFS goes faster -reduce the number of sites considered
GROUP=pop #the subgroup on whcih we are making the fst comparison -> it should be a file like GROUP.txt in the folder 02_info
POP_FILE1=02_info/"$GROUP".txt #choose on which list of pop run the analyses

source A_01.A_config.sh

# Do thetas for all population listed
#note that this bamlist should have similar sample size drawn during FST (with the subset_random_Nind.r R script)
#if samplesize differences is not a problem, one can replace 07_fst_by_pop_pair/$GROUP/"$i"subsetbam.filelist by 02_info/"$i"bam.filelist
cat $POP_FILE1 | while read i
do

	#Estimate SFS per pop for theta calculations, again relaxing filters
	echo "working on pop $i, $N_IND individuals"
	echo "will filter for sites with at least one read in $MIN_IND individuals, which is $PERCENT_IND of the total"
	
	#The fold option isn't used, so be aware that only T watterson and Taj D are interpretable if anc is the ref genome
	#We also turn on 'underflow protection', as for large data sets (large number of individuals) underflow projection is needed for SFS (-underFlowProtect 1)
angsd -P $NB_CPU \
-dosaf 1 -doMajorMinor 1 -GL 2 -doCounts 1 \
-anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa \
-uniqueOnly 1 -remove_bads 1 -skipTriallelic 1 -only_proper_pairs 1 -minInd 10 -minMapQ 30 -minQ 20 -setMaxDepth 450 \
-b 02_info/"$i".bam.filelist -out angsd/08_thetas/"$i"_pctind"$PERCENT_IND"_maxdepth"$MAX_DEPTH_FACTOR"
	
	echo "estimate real sfs for pop $i"
	realSFS angsd/08_thetas/"$i"_pctind"$PERCENT_IND"_maxdepth"$MAX_DEPTH_FACTOR".saf.idx -P $NB_CPU -nSites $NSITES  -maxIter 50 > angsd/08_thetas/"$i"_pctind"$PERCENT_IND"_maxdepth"$MAX_DEPTH_FACTOR"."$NSITES"
	file=angsd/08_thetas/"$i"_pctind"$PERCENT_IND"_maxdepth"$MAX_DEPTH_FACTOR"."$NSITES"
	
done

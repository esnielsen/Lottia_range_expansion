#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J angsd_theta
#SBATCH -p RM-shared
#SBATCH -t 20:00:00
#SBATCH --ntasks-per-node=8
set -e
set -x
# To Run
# sbatch A_14C_thetas.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork


NB_CPU=8 #change accordingly in SLURM header
NSITES=500000 #to make realSFS goes faster -reduce the number of sites considered
POP_FILE1=02_info/pop.txt #choose on which list of pop run the analyses

source A_01.A_config.sh

# Do thetas for all population listed

cat $POP_FILE1 | while read i
do
	echo $i

#now we use the sfs and the function -doThetas to get the theta output
	echo "estimate thetas for pop $i"
	angsd -P $NB_CPU -dosaf 1 -doThetas 1 -GL 2 -doMajorMinor 1 -underFlowProtect 1 \
	-anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -uniqueOnly 1 -remove_bads 1 -skipTriallelic 1 -only_proper_pairs 1 -minMapQ 30 -minQ 20 -minInd 10 \
	-b 02_info/"$i".bam.filelist \
	-pest angsd/08_thetas/"$i"_pctind"$PERCENT_IND"_maxdepth"$MAX_DEPTH_FACTOR"."$NSITES".2dsfs \
	-out angsd/08_thetas/"$i"_pctind"$PERCENT_IND"_maxdepth"$MAX_DEPTH_FACTOR"

	#Do a sliding window analysis
	thetaStat do_stat angsd/08_thetas/"$i"_pctind"$PERCENT_IND"_maxdepth"$MAX_DEPTH_FACTOR".thetas.idx -win $WINDOW -step $WINDOW_STEP \
	-outnames angsd/08_thetas/"$i"_pctind"$PERCENT_IND"_maxdepth"$MAX_DEPTH_FACTOR".thetaswindow

done

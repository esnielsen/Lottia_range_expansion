#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J ngsF_inbred
#SBATCH -p RM-shared
#SBATCH -t 1:00:00
#SBATCH --ntasks-per-node=4
set -e
set -x
# To Run
# sbatch A_11_ngsF_inbred.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork

NB_CPU=4 #change accordingly in SLURM header
POP_FILE1=angsd/02_info/pop.txt #choose on which list of pop run the analyses

source A_01_config.sh

#Number of sam files??
NSAMS=3

# Do saf/maf for all population listed
cat $POP_FILE1 | while read i
do
echo $i

	NSITES=$((`zcat angsd/06_saf_maf_by_pop/"$i"/"$i"_maf0.05_pctind0.5_maxdepth4_inbreed.mafs.gz | wc -l`-1))
	echo "$i" $NSAMS $NSITES

	# preliminary search
	zcat angsd/06_saf_maf_by_pop/"$i"/"$i"_maf0.05_pctind0.5_maxdepth4_inbreed.glf.gz | ./ngsTools/ngsF/ngsF --n_ind $NSAMS --n_sites $NSITES --glf - --out angsd/06_saf_maf_by_pop/"$i"/"$i".approx_indF --approx_EM --init_values u --n_threads 4

	zcat angsd/06_saf_maf_by_pop/"$i"/"$i"_maf0.05_pctind0.5_maxdepth4_inbreed.glf.gz | ./ngsTools/ngsF/ngsF --n_ind $NSAMS --n_sites $NSITES --glf - --out angsd/06_saf_maf_by_pop/"$i"/"$i".indF --init_values angsd/06_saf_maf_by_pop/"$i"/"$i".approx_indF.pars --n_threads 4 

	cat angsd/06_saf_maf_by_pop/"$i"/"$i".indF

done

#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J pop_min_ind
#SBATCH -p RM-shared
#SBATCH -t 1:00:00
#SBATCH --ntasks-per-node=1
set -e
set -x
# To Run
# sbatch A_02.C_min_ind_per_pop.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork

### This script is for working on population-level analyses. 
# It should give you the min # of individuals per pop for filter -minInd (min # of individuals with at least one read at this locus)- set to 50%
# I had to run this script separately for each population, but if all pops have same # of individs, you can ignore 

NB_CPU=1 #change accordingly in SLURM header
POP_FILE1=angsd/02_info/pop.txt #choose on which list of pops to run the analyses

#prepare variables - avoid to modify
source A_01_config.sh

# Do saf/maf for all population listed
cat $POP_FILE1 | while read i
do
echo $i

#mkdir 06_saf_maf_by_pop/$i

#This will give you min ind per population, which can then be added to the config file
N_IND=$(wc -l angsd/02_info/"$i"bam.filelist | cut -d " " -f 1)
MIN_IND_FLOAT=$(echo "($N_IND * $PERCENT_IND)"| bc -l)
MIN_IND=${MIN_IND_FLOAT%.*} 

echo "working on pop $i, $N_IND individuals, will use the sites file provided"
echo "will filter for sites with at least one read in $MIN_IND individuals, which is $PERCENT_IND of the total"

done

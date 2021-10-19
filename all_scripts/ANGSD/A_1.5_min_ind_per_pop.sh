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
# sbatch A_5.5_pop_ind.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork

###this script will work on bamfiles by population and calculate saf  & maf 
#maybe edit
NB_CPU=1 #change accordingly in SLURM header
POP_FILE1=angsd/02_info/pop.txt #choose on which list of pop run the analyses

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

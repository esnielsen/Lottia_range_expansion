#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J angsd_ngsF_saf
#SBATCH -p RM-shared
#SBATCH -t 3:00:00
#SBATCH --ntasks-per-node=8
set -e
set -x
# To Run
# sbatch A_9_ngsF_saf.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork

# Call package
module load anaconda3
eval "$(conda shell.bash hook)"
conda activate ANGSD

###this script will work on bamfiles by population and calculate saf  & maf 
NB_CPU=8 #change accordingly in SLURM header
POP_FILE1=angsd/02_info/pop.txt #choose on which list of pop run the analyses

#prepare variables - avoid to modify
source A_01_config.sh

# Do saf/maf for all population listed
cat $POP_FILE1 | while read i
do
echo $i

#mkdir 06_saf_maf_by_pop/$i

N_IND=$(wc -l 02_info/"$i"bam.filelist | cut -d " " -f 1)
MIN_IND_FLOAT=$(echo "($N_IND * $PERCENT_IND)"| bc -l)
MIN_IND=${MIN_IND_FLOAT%.*} 

echo "working on pop $i, $N_IND individuals, will use the sites file provided"
echo "will filter for sites with at least one read in $MIN_IND individuals, which is $PERCENT_IND of the total"

angsd -P $NB_CPU -nQueueSize 50 \
-doMaf 1 -dosaf 1 -GL 1 -doGlf 3 -doMajorMinor 1 -doCounts 1 \
-anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa \
-minMapQ 30 -minQ 20 -minInd $MIN_IND -uniqueOnly 1 -remove_bads 1 -only_proper_pairs 1 -skipTriallelic 1 -SNP_pval 1e-6 \
-b angsd/02_info/"$i"bam.filelist -out angsd/06_saf_maf_by_pop/$i/"$i"_maf"$MIN_MAF"_pctind"$PERCENT_IND"_maxdepth"$MAX_DEPTH_FACTOR"_inbreed
done

#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J plink_bed
#SBATCH -p RM-shared
#SBATCH -t 1:00:00
#SBATCH --ntasks-per-node=1
set -e
set -x
# To Run
# sbatch D_2_makebed.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork

# Call package
module load anaconda3
eval "$(conda shell.bash hook)"
conda activate plink

source A_01_config.sh

N_IND=$(wc -l 02_info/bam.filelist | cut -d " " -f 1)
MIN_IND_FLOAT=$(echo "($N_IND * $PERCENT_IND)"| bc -l)
MIN_IND=${MIN_IND_FLOAT%.*} 
MAX_DEPTH=$(echo "($N_IND * $MAX_DEPTH_FACTOR)" |bc -l)

plink --tped angsd/09_plink/all_plink_maf"$MIN_MAF"_pctind"$PERCENT_IND"_maxdepth"$MAX_DEPTH_FACTOR".tped \
--tfam angsd/09_plink/all_plink_maf"$MIN_MAF"_pctind"$PERCENT_IND"_maxdepth"$MAX_DEPTH_FACTOR".tfam --allow-extra-chr \
--make-bed --out angsd/09_plink/all_plink_maf"$MIN_MAF"_pctind"$PERCENT_IND"_maxdepth"$MAX_DEPTH_FACTOR".bed

#plink --file angsd/09_plink/all_plink_maf0.05_pctind0.5_maxdepth4.bin --allow-extra-chr \
#--make-bed --out angsd/09_plink/all_plink_maf"$MIN_MAF"_pctind"$PERCENT_IND"_maxdepth"$MAX_DEPTH_FACTOR".bin

#plink --file angsd/09_plink/all_plink_maf0.05_pctind0.5_maxdepth4.bin --allow-extra-chr --recode vcf

#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J pcangsd_prune
#SBATCH -p RM-shared
#SBATCH -t 1:00:00
#SBATCH --ntasks-per-node=8
set -e
set -x
# To Run
# sbatch A_08_pcangsd_prune.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork

#module load python3.8.6

# Call package
module load anaconda3
eval "$(conda shell.bash hook)"
conda activate numpy

NB_CPU=8 #change accordingly in SLURM header

#prepare variables - avoid to modify
source A_01.A_config.sh

#this is the list of file we are working on
BAM_LIST=02_info/bam.filelist

#this is the pruned input file for the pca (from A_7_gl_prune.sh)
INPUT=angsd/03_saf_maf_gl_all/all_maf"$MIN_MAF"_pctind"$PERCENT_IND"_maxdepth"$MAX_DEPTH_FACTOR"_pruned.beagle.gz

echo "analyse covariance matrix on all individuals"
python3 $PCA_ANGSD_PATH/pcangsd.py -threads $NB_CPU \
	-beagle $INPUT -o angsd/04_pca/pruned/all_maf"$MIN_MAF"_pctind"$PERCENT_IND"_maxdepth"$MAX_DEPTH_FACTOR"_pruned

echo "transform covariance matrix into PCA"
COV_MAT=angsd/04_pca/pruned/all_maf"$MIN_MAF"_pctind"$PERCENT_IND"_maxdepth"$MAX_DEPTH_FACTOR"_pruned.cov


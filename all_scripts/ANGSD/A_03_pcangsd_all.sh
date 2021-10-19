
#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J pcangsd
#SBATCH -p RM-shared
#SBATCH -t 1:00:00
#SBATCH --ntasks-per-node=1
set -e
set -x
# To Run
# sbatch A_03_pcangsd_all.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork

module load python3.8.6

# Call fastp package
module load anaconda3
eval "$(conda shell.bash hook)"
conda activate numpy

#maybe edit
NB_CPU=1 #change accordingly in SLURM header

#prepare variables - avoid to modify
source A_01_config.sh

#this is the list of file we are working on
BAM_LIST=angsd/02_info/bam.filelist

#this is the input file for the pca
INPUT=angsd/03_saf_maf_gl_all/all_maf"$MIN_MAF"_pctind"$PERCENT_IND"_maxdepth"$MAX_DEPTH_FACTOR".beagle.gz

echo "analyse covariance matrix on all individuals"
python3 $PCA_ANGSD_PATH/pcangsd.py -threads $NB_CPU \
	-beagle $INPUT -o angsd/04_pca/all_maf"$MIN_MAF"_pctind"$PERCENT_IND"_maxdepth"$MAX_DEPTH_FACTOR"

echo "transform covariance matrix into PCA"
COV_MAT=angsd/04_pca/all_maf"$MIN_MAF"_pctind"$PERCENT_IND"_maxdepth"$MAX_DEPTH_FACTOR".cov
Rscript angsd/Rscripts/make_pca_simple.r "$COV_MAT" "$BAM_LIST"
#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J plink_filt_outs
#SBATCH -p RM-shared
#SBATCH -o ./Reports/output.%j.out # STDOUT
#SBATCH -t 48:00:00
#SBATCH --ntasks-per-node=1
set -e
set -x
# To Run
# sbatch plink.filt.outs.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork

# Call package
module load anaconda3
eval "$(conda shell.bash hook)"
conda activate plink

plink --tped angsd/03_saf_maf_gl_all/pruned/ALL_2_maf0.05_pctind0.5_maxdepth15_pruned.R2.tped \
--tfam angsd/03_saf_maf_gl_all/pruned/ALL_2_maf0.05_pctind0.5_maxdepth15_pruned.R2.tfam --exclude plink.extract.list.txt --allow-extra-chr \
--make-bed --allow-no-sex --out angsd/03_saf_maf_gl_all/pruned/ALL_NEUT_maf0.05_pctind0.5_maxdepth15_pruned.R2
 

#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J plink_recode
#SBATCH -p RM-shared
#SBATCH -o ./Reports/output.%j.out # STDOUT
#SBATCH -t 48:00:00
#SBATCH --ntasks-per-node=1
set -e
set -x
# To Run
# sbatch GRRF.plink.recode.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork

# Call package
module load anaconda3
eval "$(conda shell.bash hook)"
conda activate plink

#take .tped file from angsd maf_saf script and convert genotypes to represented by 0, 1, 2 (by --recode A)
#here there is a .tped file for just the leading region, but this was done on all samples

plink --tped angsd/03_saf_maf_gl_all/regions/leading_2_maf0.05_pctind0.5_maxdepth15.tped \
--tfam angsd/03_saf_maf_gl_all/regions/leading_2_maf0.05_pctind0.5_maxdepth15.tfam --allow-extra-chr --recode A \
--out angsd/plink/leading.GRRF_R2.pruned.A.bin

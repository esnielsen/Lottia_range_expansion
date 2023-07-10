#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J grrf_recode
#SBATCH -p RM-shared
#SBATCH -t 48:00:00
#SBATCH --ntasks-per-node=1
set -e
set -x
# To Run
# sbatch GRRF.plink.recode.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork/grrf


# Call package
module load anaconda3
eval "$(conda shell.bash hook)"
conda activate plink

plink --tped angsd/03_saf_maf_gl_all/regions/GRRF.CA.n.c.s.L_maf0.05_pctind0.5_maxdepth15.tped \
--tfam angsd/03_saf_maf_gl_all/regions/GRRF.CA.n.c.s.L_maf0.05_pctind0.5_maxdepth15.tfam --allow-extra-chr --recode A \
--out GRRF.CA.n.c.s.L.all_R2.pruned.A.bin

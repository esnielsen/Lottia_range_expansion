#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J angsd_verify
#SBATCH -p RM-shared
#SBATCH -t 1:00:00
#SBATCH --ntasks-per-node=1
set -e
set -x
# To Run
# sbatch A_verify.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork/angsd

realSFS print angsd/07_fst_by_pop_pair/pop/BMR_maf0.05_pctind0.5_maxdepth4.saf.idxpop1.saf.idx


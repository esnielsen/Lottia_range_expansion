#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J baypass1
#SBATCH -p RM-shared
#SBATCH -t 48:00:00
#SBATCH --ntasks-per-node=5
set -e
set -x
# To Run
# sbatch baypass1.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork/Outliers/03_baypass


baypass_2.31/sources/g_baypass -npop 19 -gfile by_pop_0.05_pctind0.5_maxdepth15.mafs.pruned.baypass -outprefix ALL_2_r2 -npilot 100 -nthreads 5

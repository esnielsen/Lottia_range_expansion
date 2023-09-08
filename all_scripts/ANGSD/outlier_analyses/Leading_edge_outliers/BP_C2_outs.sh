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
# sbatch BP_C2_outs.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork/Outliers/03_baypass

#to get C2 constrast values 
baypass_2.31/sources/g_baypass -npop 15 -gfile by_pop_0.05_pctind0.5_maxdepth15.mafs.ALL_2.baypass -contrastfile harv_press_bpass.contrast.txt -outprefix harv_press_L_C2 -npilot 100 -nthreads 5

# the gfile is the same one we used for the GEA baypass model
# we now include a contrast file, which lists whether each individual is in a harvested/protected site, or core/leading edge pop

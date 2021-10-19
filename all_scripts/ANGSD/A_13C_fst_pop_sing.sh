#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J angsd_FST_nMAF_sing
#SBATCH -p RM-shared
#SBATCH -t 3:00:00
#SBATCH --ntasks-per-node=1
set -e
set -x
# To Run
# sbatch A_06_fst_nMAF_sing_2.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork

chmod +x A_13B_fst_pop.sh

singularity exec /ocean/projects/deb200006p/enielsen/LGwork/singularity-recipes_angsd_v0.933.sif /ocean/projects/deb200006p/enielsen/LGwork/A_13B_fst_pop.sh

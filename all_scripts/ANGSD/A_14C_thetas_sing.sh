#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J angsd_theta_sing
#SBATCH -p RM-shared
#SBATCH -t 4:00:00
#SBATCH --ntasks-per-node=8
set -e
set -x
# To Run
# sbatch A_14C_thetas_sing.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork

chmod +x A_14C_thetas.sh

singularity exec /ocean/projects/deb200006p/enielsen/LGwork/singularity-recipes_angsd_v0.933.sif /ocean/projects/deb200006p/enielsen/LGwork/A_14C_thetas.sh

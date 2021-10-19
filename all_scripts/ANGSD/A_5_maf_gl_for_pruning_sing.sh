#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J angsd_LD_sing
#SBATCH -p RM-shared
#SBATCH -t 1:00:00
#SBATCH --ntasks-per-node=1
set -e
set -x
# To Run
# sbatch A_8_angsd_LD_sing.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork

chmod +x A_5_maf_gl_for_pruning.sh

singularity exec /ocean/projects/deb200006p/enielsen/LGwork/singularity-recipes_angsd_v0.933.sif /ocean/projects/deb200006p/enielsen/LGwork/A_5_maf_gl_for_pruning.sh 

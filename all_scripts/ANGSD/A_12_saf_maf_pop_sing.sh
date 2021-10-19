#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J angsd_pop_saf_sing
#SBATCH -p RM
#SBATCH -t 3:00:00
#SBATCH --ntasks-per-node=3
set -e
set -x
# To Run
# sbatch A_05_saf_maf_pop_sing.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork

chmod +x A_12_saf_maf_pop.sh

singularity exec /ocean/projects/deb200006p/enielsen/LGwork/singularity-recipes_angsd_v0.933.sif /ocean/projects/deb200006p/enielsen/LGwork/A_12_saf_maf_pop.sh

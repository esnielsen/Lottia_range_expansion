#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J mutli_fastq
#SBATCH -p RM-shared
#SBATCH -t 2:00:00
#SBATCH --ntasks-per-node=2
set -e
set -x
# To Run
# sbatch multiqc.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork/02_FP_A_trimmed/qual

# Call package
module load anaconda3
eval "$(conda shell.bash hook)"
conda activate multiqc

#run multiqc in the directory where all of the inidividual fastqc outputs are
multiqc .

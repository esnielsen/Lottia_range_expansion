#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J sam_val
#SBATCH -p RM-shared
#SBATCH -t 1:00:00
set -e
set -x
# To Run
# sbatch sam_validate.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork/tester

module load samtools/1.11.0
module load picard/2.23.2

picard ValidateSamFile \
I=BMR14_S544_L002_1.trimmed.sorted.bam \
MODE=SUMMARY

#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J fast_QC_MEX
#SBATCH -p RM-shared
#SBATCH -t 8:00:00
#SBATCH --ntasks-per-node=5
set -e
set -x
# To Run
# sbatch fastQC.sh

# Call fastp package
module load anaconda3
eval "$(conda shell.bash hook)"
conda activate fastQC

#Set up directory
RUN_PATH="/ocean/projects/deb200006p/enielsen/LGwork/02_FP_A_trimmed"
cd $RUN_PATH
for file in $(ls -1 _*.gz)
do
    SAMPLE=`basename $file`
    fastqc -t 5 ${SAMPLE} -o /ocean/projects/deb200006p/enielsen/LGwork/02_FP_A_trimmed/qual
done

#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J bamlist
#SBATCH -p RM-shared
#SBATCH -t 1:00:00
#SBATCH --ntasks-per-node=1
set -e
set -x
# To Run
# sbatch A_01.C_info_txt.sh

###this script will make the info.txt file for pcas

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork/02_info


awk '{ print $1 "\t" FILENAME;}' bam.filelist > info.txt

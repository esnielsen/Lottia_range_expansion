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
# sbatch A_01.B_bamlist.sh

###this script will make a list of all bamfiles and several list by population

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork

#variables
source A_01.A_config.sh

# Make a list of all bamfiles
ls $BAM_PATH/*.bam > 02_info/bam.filelist

# Make a list of bamfiles by pop, as given by pop.txt
POP_FILE1=02_info/pop.txt #pop list n° 1 

cat $POP_FILE1 | while read i
do
echo $i
ls $BAM_PATH/*$i*.bam > 02_info/"$i"bam.filelist
done

##possible to re-do this for another list of pop, beware it is not the same names, or it will overwrite
#POP_FILE2=02_info/group.txt #pop list n° 2

#cat $POP_FILE2 | while read i
#do
#echo $i
#ls $BAM_PATH/*$i*.sorted.bam > 02_info/"$i"bam.filelist
#done

#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J miss.syn.sfs
#SBATCH -p RM-shared
#SBATCH -t 48:00:00
#SBATCH --ntasks-per-node=4
set -e
set -x
# To Run
# sbatch miss.syn2_sfs.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork/gen_load/ensembl-vep

POP_FILE1=../../02_info/pop.txt #change with pops

# Do saf/maf for all population listed
cat $POP_FILE1 | while read i
do
echo $i

realSFS "$i".nomaf.synon.saf.idx -P 4 > "$i".nomaf.synon.sfs
realSFS "$i".nomaf.mis.saf.idx -P 4 > "$i".nomaf.mis.sfs

done

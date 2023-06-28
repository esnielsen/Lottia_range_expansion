#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J miss.syn.angsd
#SBATCH -p RM-shared
#SBATCH -t 48:00:00
#SBATCH --ntasks-per-node=40
set -e
set -x
# To Run
# sbatch miss.syn.angsd.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork

#angsd sites index gen_load/ensembl-vep/syn.vep.sites
#angsd sites index gen_load/ensembl-vep/miss.vep.sites

POP_FILE1=02_info/pop2.txt #ch

GENOME_REF=03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa
TODO="-doSaf 1 -anc $GENOME_REF -ref $GENOME_REF"

#prepare variables - avoid to modify
num_pops=$(wc -l "$POP_FILE1" | cut -d " " -f 1)

# Do saf/maf for all population listed
cat $POP_FILE1 | while read i
do
echo $i

angsd -sites gen_load/ensembl-vep/miss.vep.sites -b 02_info/"$i"bam.filelist  -GL 1 -P 40 -minInd 12 $TODO -out gen_load/ensembl-vep/"$i".nomaf.mis
done


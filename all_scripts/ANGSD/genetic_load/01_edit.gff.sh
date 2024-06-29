#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J edit.gff
#SBATCH -p RM-shared
#SBATCH -t 48:00:00
#SBATCH --ntasks-per-node=1
set -e
set -x
# To Run
# sbatch edit.gff.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork/gen_load/ensembl-vep

#edit .gff to make all contigs with no strand be on forward stand
cat Lottia_gigantea.55.gff | awk -F "\t" '{ $7 = ($7 == "." ? "+" : $7) } 1' OFS="\t" Lottia_gigantea.55.gff > Lottia_gigantea.55.edit.gff

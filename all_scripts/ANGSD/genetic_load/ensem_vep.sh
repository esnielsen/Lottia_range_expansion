#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J ensem_vep
#SBATCH -p RM-shared
#SBATCH --cpus-per-task=50
#SBATCH -t 48:00:00
set -e
set -x
# To Run
# sbatch ensem_vep.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork/gen_load/ensembl-vep

./vep -i vep.test.vcf --gff Lottia_gigantea.55.edit.gff.gz --fasta Lottia_gigantea.Lotgi1.dna.toplevel.fa.gz --force_overwrite

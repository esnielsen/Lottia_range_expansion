#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J sort_gff
#SBATCH -p RM-shared
#SBATCH --cpus-per-task=1
#SBATCH -t 4:00:00
set -e
set -x
# To Run
# sbatch sort.gff.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork/gen_load/ensembl-vep

# Call fastp package
module load anaconda3
eval "$(conda shell.bash hook)"
conda activate htslib

grep -v "#" Lottia_gigantea.Lotgi1.55.gff3 | sort -k1,1 -k4,4n -k5,5n -t$'\t' | bgzip -c > Lottia_gigantea.55.gff.gz

grep -v "#" Lottia_gigantea.55.edit.gff | bgzip -c > Lottia_gigantea.55.edit.gff.gz
tabix -p gff Lottia_gigantea.55.edit.gff.gz

#bgzip Lottia_gigantea.Lotgi1.dna.toplevel.fa

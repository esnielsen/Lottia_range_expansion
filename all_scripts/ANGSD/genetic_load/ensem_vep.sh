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

# input files = vcf, edited gff, fasta a ref
# ran within singularity for htslib compatability

./vep -i ../../angsd/03_saf_maf_gl_all/regions/CA.n.core_maf0.05_pctind0.5_maxdepth15.vcf --gff Lottia_gigantea.55.edit.gff.gz --fasta Lottia_gigantea.Lotgi1.dna.toplevel.fa.gz --force_overwrite

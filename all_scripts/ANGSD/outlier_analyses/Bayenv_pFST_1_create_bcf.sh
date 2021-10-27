#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J angsd_gl_all
#SBATCH -p RM
#SBATCH -t 4:00:00
#SBATCH --ntasks-per-node=4
set -e
set -x
# To Run
# sbatch Bayenv_pFST_1_create_bcf.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork

# Call package
module load anaconda3
eval "$(conda shell.bash hook)"
conda activate ANGSD

#prepare variables - avoid to modifyf
NB_CPU=4 #change accordingly in SLURM header
source A_01_config.sh
N_IND=$(wc -l angsd/02_info/bam.filelist | cut -d " " -f 1)
MIN_IND_FLOAT=$(echo "($N_IND * $PERCENT_IND)"| bc -l)
MIN_IND=${MIN_IND_FLOAT%.*} 
MAX_DEPTH=$(echo "($N_IND * $MAX_DEPTH_FACTOR)" |bc -l)

echo " Calculate the SAF, MAF and GL for all individuals listed in 02_info/bam.filelist"
echo "keep loci with at leat one read for n individuals = $MIN_IND, which is $PERCENT_IND % of total $N_IND individuals"
echo "filter on allele frequency = $MIN_MAF"


angsd -P $NB_CPU -nQueueSize 50 -gl 1 -dopost 1 -domajorminor 1 -domaf 1 -dobcf 1 --ignore-RG 0 -dogeno 1 -docounts 1  \
-anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -uniqueOnly 1 -remove_bads 1 -skipTriallelic 1 -only_proper_pairs 1 -minMapQ 30 -minQ 20   \
-rf angsd/02_info/regions_all_maf0.05_pctind0.5_maxdepth4 -SNP_pval 1e-6 -minInd $MIN_IND -minMaf $MIN_MAF -setMaxDepth $MAX_DEPTH   \
-b angsd/02_info/bam.filelist -out angsd/all_vcf_maf0.05_pctind0.5_maxdepth4 




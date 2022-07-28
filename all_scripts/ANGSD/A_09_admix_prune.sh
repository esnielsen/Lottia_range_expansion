#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J angsd_admix_prune
#SBATCH -p RM-shared
#SBATCH -t 48:00:00
#SBATCH --ntasks-per-node=6
set -e
set -x
# To Run
# sbatch A_09_admix_prune.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork

# Call package
module load anaconda3
eval "$(conda shell.bash hook)"
conda activate ANGSD

NB_CPU=6 #change accordingly in SLURM header

source A_01.A_config.sh


## Run admixture for Kmin to Kmax (these set in the config file) 10 times each
for j in {1..10}; do

	for i in $(seq $K_MIN $K_MAX)
		do 
		echo $i
	NGSadmix -P $NB_CPU -likes angsd/03_saf_maf_gl_all/all_maf"$MIN_MAF"_pctind"$PERCENT_IND"_maxdepth"$MAX_DEPTH_FACTOR"_pruned.beagle.gz \
	-minMaf $MIN_MAF -K $i -o angsd/05_ngs_admix/pruned/all_maf"$MIN_MAF"_pctind"$PERCENT_IND"_maxdepth"$MAX_DEPTH_FACTOR"_pruned_K"$i"_run"$j"
	done
done


#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J realign_ind
#SBATCH -p RM-shared
#SBATCH -t 48:00:00
#SBATCH --ntasks-per-node=40

set -e
set -x
# To Run
# sbatch 05.B_realign_indels.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork

# Global variables
DEDUPFOLDER="07_clipped"
REALIGNFOLDER="08_realigned"
GENOMEFOLDER="03_genome"
GENOME="Lottia_gigantea.Lotgi1.dna.toplevel.fa"

# Call package
module load anaconda3
eval "$(conda shell.bash hook)"
conda activate gatk3

# Realign around target previously identified in parallel
ls -1 "$DEDUPFOLDER"/*.no_overlap.bam |
    parallel -j 6 gatk3 -T IndelRealigner -R "$GENOMEFOLDER"/"$GENOME" -I {} -targetIntervals {}.intervals --consensusDeterminationModel USE_READS  -o "$REALIGNFOLDER"/{/}.realigned.bam


# not used  - Realign around target previously identified
#ls -1 "$DEDUPFOLDER"/*dedup.bam |
#while read file
#do
#    java -jar $GATK \
#        -T IndelRealigner \
#        -R "$GENOMEFOLDER"/"$GENOME" \
#        -I "$file" \
#        -targetIntervals "${file%.dedup.bam}".intervals \
#        --consensusDeterminationModel USE_READS  \
#        -o "$REALIGNFOLDER"/$(basename "$file" .dedup.bam).realigned.bam
#done

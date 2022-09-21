#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J realign_tar
#SBATCH -p RM-shared
#SBATCH --cpus-per-task=10
#SBATCH -t 24:00:00
set -e
set -x
# To Run
# sbatch 05.A_realign_targets.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork

# Call package
module load anaconda3
eval "$(conda shell.bash hook)"
conda activate gatk3

# Global variables
DEDUPFOLDER="07_clipped"
REALIGNFOLDER="08_realigned"
GENOMEFOLDER="03_genome"
GENOME="Lottia_gigantea.Lotgi1.dna.toplevel.fa"

# Load needed modules
#module load GATK/4.1.9.0

# Build Bam Index
ls -1 "$DEDUPFOLDER"/*.no_overlap.bam |
    parallel -j 10 gatk3 -T RealignerTargetCreator -R "$GENOMEFOLDER"/"$GENOME" -I {} -o {}.intervals
    
    
#not used -    Build Bam Index
#ls -1 "$DEDUPFOLDER"/*.dedup.bam |
#while read file
#do
#    java -jar "$GATK" \
#        -T RealignerTargetCreator \
#        -R "$GENOMEFOLDER"/"$GENOME" \
#        -I "$file" \
#        -o "${file%.dedup.bam}".intervals
#done

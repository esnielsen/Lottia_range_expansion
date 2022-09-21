
#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J dict_ref
#SBATCH -p RM-shared
#SBATCH -t 1:00:00
set -e
set -x
# To Run
# sbatch 06_dictionary_ref.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork

# Global variables
GENOMEFOLDER="03_genome"
GENOME="Lottia_gigantea.Lotgi1.dna.toplevel.fa"
DICT="$GENOMEFOLDER"/"${GENOME%.fa}".dict

# Load needed modules
module load picard/2.23.2
module load samtools/1.11.0

# Copy script to log folder
TIMESTAMP=$(date +%Y-%m-%d_%Hh%Mm%Ss)
SCRIPT=$0
NAME=$(basename $0)
LOG_FOLDER="99_log_files"
cp "$SCRIPT" "$LOG_FOLDER"/"$TIMESTAMP"_"$NAME"

# create a dictionnary from reference fasta file
picard CreateSequenceDictionary \
    R="$GENOMEFOLDER"/"$GENOME" \
    O="$DICT"

# Also index genome with samtools
samtools faidx "$GENOMEFOLDER"/"$GENOME"

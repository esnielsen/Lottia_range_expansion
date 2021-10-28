
#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J index_bams
#SBATCH -p RM-shared
#SBATCH -t 1:00:00
set -e
set -x
# To Run
# sbatch 04_gatk_index_bams.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork

# Global variables

DEDUPFOLDER="07_deduplicated"

# Load needed modules
module load picard/2.23.2

# Copy script to log folder
TIMESTAMP=$(date +%Y-%m-%d_%Hh%Mm%Ss)
SCRIPT="$0"
NAME="$(basename $0)"
LOG_FOLDER="99_log_files"
cp "$SCRIPT" "$LOG_FOLDER"/"$TIMESTAMP"_"$NAME"

# Build Bam Index
ls -1 "$DEDUPFOLDER"/*.dedup.bam |
while read file
do
picard BuildBamIndex INPUT="$file"
done


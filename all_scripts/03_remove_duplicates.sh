
#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J mark_dups
#SBATCH -p EM
#SBATCH -t 6:00:00
#SBATCH --ntasks-per-node=24
set -e
set -x
# To Run
# sbatch 03_remove_duplicates.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork

# Global variables
ALIGNEDFOLDER="05_aligned"
DEDUPFOLDER="06_deduplicated"
METRICSFOLDER="dedup_metrics"

# Copy script to log folder
TIMESTAMP=$(date +%Y-%m-%d_%Hh%Mm%Ss)
SCRIPT=$0
NAME=$(basename $0)
LOG_FOLDER="99_log_files"
cp "$SCRIPT" "$LOG_FOLDER"/"$TIMESTAMP"_"$NAME"

# Load needed modules
module load picard/2.23.2

# Remove duplicates from bam alignments in parallel
ls -1 "$ALIGNEDFOLDER"/*.bam |
    parallel -j 10 echo "Deduplicating sample {}" \; picard MarkDuplicates INPUT={} OUTPUT="$DEDUPFOLDER"/{/}.dedup.bam METRICS_FILE="$METRICSFOLDER"/metrics.txt VALIDATION_STRINGENCY=SILENT REMOVE_DUPLICATES=true ASSUME_SORTED=true
#done

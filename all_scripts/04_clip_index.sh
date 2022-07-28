
#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J softclip_index
#SBATCH -p RM-shared
#SBATCH -t 48:00:00
#SBATCH --ntasks-per-node=28
set -e
set -x
# To Run
# sbatch 04_clip_index.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork

# Global variables
DEDUPFOLDER="06_deduplicated"
CLIPFOLDER="07_clipped"


# Load programs
module load anaconda3
eval "$(conda shell.bash hook)"
conda activate bamutil

module load samtools/1.11.0

module load picard/2.23.2

for file in "$DEDUPFOLDER"/*.bam
do
    echo "$file"

    # Clip overlap
    bam clipOverlap \
        --in "$file" \
        --out "$CLIPFOLDER"/$(basename "$file" .dedup.bam).temp.bam \
        --unmapped --storeOrig OC --stats

    # Remove the reads that became unmapped in the clipping
    samtools view -hb -F 4 \
        "$CLIPFOLDER"/$(basename "$file" .dedup.bam).temp.bam \
        > "$CLIPFOLDER"/$(basename "$file" .dedup.bam).no_overlap.bam
        
    # Index bam
    picard BuildBamIndex INPUT="$CLIPFOLDER"/$(basename "$file" .realigned.bam).no_overlap.bam
        
    # Cleanup
    rm "$CLIPFOLDER"/$(basename "$file" .dedup.bam).temp.bam

done

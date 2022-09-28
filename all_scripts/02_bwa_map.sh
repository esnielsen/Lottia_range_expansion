
#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J bwa_align_sbr33
#SBATCH -p RM-shared
#SBATCH --cpus-per-task=7
#SBATCH -t 20:00:00
set -e
set -x
# To Run
# sbatch 02_bwa_map.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork

# Global variables
GENOMEFOLDER="03_genome"
GENOME="Lottia_gigantea.Lotgi1.dna.toplevel.fa"
RAWDATAFOLDER="02_FP_A_trimmed"
ALIGNEDFOLDER="05_aligned"
NCPU=$1

# Test if user specified a number of CPUs
if [[ -z "$NCPU" ]]
then
    NCPU=7
fi

# Load needed modules
module load BWA/0.7.3a
module load samtools/1.11.0

# Index genome
# bwa index -p "$GENOMEFOLDER"/"$GENOME" "$GENOMEFOLDER"/"$GENOME"

# Iterate over sequence file pairs and map with bwa
for file in $(ls -1 "$RAWDATAFOLDER"/*_*_1.trimmed.fq.gz)
do
    # Name of uncompressed file
    file2=$(echo "$file" | perl -pe 's/_1\.trimmed/_2.trimmed/')
    echo "Aligning file $file $file2" 

    name=$(basename "$file")
    name2=$(basename "$file2")
    ID="${name%.trimmed.fastq.gz}"
    PL=DNBSEQ

#might be a good idea to not pipe bwa map & samtools view in case you want to assess mapping percentages across samples (by piping you only keep bam files with 100% mapping rate, due to sam filters) 
    # Align reads
    bwa mem  -M -t "$NCPU" -R "@RG\tID:$ID\tSM:$ID\tPL:$PL" "$GENOMEFOLDER"/"$GENOME" "$RAWDATAFOLDER"/"$name" "$RAWDATAFOLDER"/"$name2" |
    samtools view -Sb -q 20 -f 2 -F 8 -F 4 - > "$ALIGNEDFOLDER"/"${name%.fastq.gz}".bam

    # Sort
    samtools sort --threads "$NCPU" "$ALIGNEDFOLDER"/"${name%.fastq.gz}".bam \
        > "$ALIGNEDFOLDER"/"${name%.fastq.gz}".sorted.bam

    # Index
    samtools index "$ALIGNEDFOLDER"/"${name%.fastq.gz}".sorted.bam

    # Remove unsorted bam file
    rm "$ALIGNEDFOLDER"/"${name%.fastq.gz}".bam
done


#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J fast-p
#SBATCH -p RM-shared
#SBATCH -t 20:00:00
#SBATCH --ntasks-per-node=6
set -e
set -x
# To Run
# sbatch 01_fastp.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork

# Call fastp package
module load anaconda3
eval "$(conda shell.bash hook)"
conda activate fastp.filter

# Iterate over files in data folder
for file in $(ls -1 rawdata/fastqs/*_*_1*.gz)
do
    input_file=$(echo "$file" | perl -pe 's/_1.fq.gz//')
    output_file=$(basename "$input_file")
    echo "Treating: $output_file"

    fastp -w 6 \
        -i "$input_file"_1.fq.gz \
        -I "$input_file"_2.fq.gz \
        -o 02_FP_A_trimmed/"$output_file"_1.trimmed.fq.gz \
        -O 02_FP_A_trimmed/"$output_file"_2.trimmed.fq.gz \
        --adapter_sequence=AAGTCGGAGGCCAAGCGGTCTTAGGAAGACAA \
        --adapter_sequence_r2=AAGTCGGATCGTAGCCATGTCGTTCTGTGAGCCAAGGAGTTG \
        -j 02_FP_A_trimmed/01_reports/"$output_file".json \
        -h 02_FP_A_trimmed/01_reports/"$output_file".html
done

# w = number of threads
# i = read 1
# I = read 2
# o & O = outputs
# outputs .json and html for qc

# can also include "--cut_right" option to trim off ends of reads with low base quality within sliding windows (I tried this but didn't improve QC and led to shorter sequence lengths)

# Run for single file
#fastp -w 6 -i rawdata/fastqs/SBR_33_1.fq.gz -I rawdata/fastqs/SBR_33_2.fq.gz --adapter_sequence=AAGTCGGAGGCCAAGCGGTCTTAGGAAGACAA --adapter_sequence_r2=AAGTCGGATCGTAGCCATGTCGTTCTGTGAGCCAAGGAGTTG -o 02_FP_A_trimmed/SBR_33_1.trimA.fq.gz -O 02_FP_A_trimmed/SBR_33_2.trimA.fq.gz -j 02_FP_A_trimmed/01_reports/SBR_33_A.json -h 02_FP_A_trimmed/01_reports/SBR_33_A.html 



#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J angsd_gl_all
#SBATCH -p RM-shared
#SBATCH -t 48:00:00
#SBATCH --ntasks-per-node=30

set -e
set -x
# To Run
# sbatch A_02.A_gl_all.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork

# Call package (DELETE This section and next if using singularity)
module load anaconda3
eval "$(conda shell.bash hook)"
conda activate ANGSD

#prepare variables (using config file - dont need to use if you'd rather just input minimum individual/depth parameters)
NB_CPU=30 #change accordingly in SLURM header
source A_01.A_config.sh 
N_IND=$(wc -l 02_info/bam.filelist | cut -d " " -f 1) #change bam.filelist accordingly
MIN_IND_FLOAT=$(echo "($N_IND * $PERCENT_IND)"| bc -l)
MIN_IND=${MIN_IND_FLOAT%.*} 
MAX_DEPTH=$(echo "($N_IND * $MAX_DEPTH_FACTOR)" |bc -l)

echo " Calculate the SAF, MAF and GL for all individuals listed in 02_info/bam.filelist"
echo "keep loci with at leat one read for n individuals = $MIN_IND, which is $PERCENT_IND % of total $N_IND individuals"
echo "filter on allele frequency = $MIN_MAF"

#Working script
angsd -P $NB_CPU -nQueueSize 50 \
-doMaf 1 -dosaf 1 -GL 2 -doGlf 2 -doMajorMinor 1 -doCounts 1 -doGeno 2 \
-anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -remove_bads 1 -baq 1 -skipTriallelic 1 -SNP_pval 1e-6 -uniqueOnly 1 -only_proper_pairs 1 -minMapQ 30 -minQ 20 \
-minInd $MIN_IND -minMaf $MIN_MAF -setMaxDepth $MAX_DEPTH \
-b 02_info/bam.filelist \
-out angsd/03_saf_maf_gl_all/ALL_2_maf"$MIN_MAF"_pctind"$PERCENT_IND"_maxdepth"$MAX_DEPTH_FACTOR"

#main features
#-P nb of threads -nQueueSize maximum waiting in memory (to optimize CPU usage)
# -doMaf 1 (allele frequencies)  -dosaf (prior for SFS) -GL (Genotype likelihood 2 GATK method - export GL in beagle format  -doGLF 2) 
# -doMajorMinor 1 use the most frequent allele as major -doCounts 1 to get allele counts
# -anc provide a ancestral sequence = reference in our case -fold 1 (we want to fold since we have reference instead of ancestral) 
# then have a bunch of different filtering parameters (OPTIONAL): removing bad, triallelic, non-unique, non-paired, bad quality reads
# -rf (file with the region written) i.e. work on a defined region : OPTIONAL
# -b (bamlist) input file
# -out  output file

echo "from the maf file, extract a list of SNP chr, positoin, major all, minor all"

# zip maf files
gunzip angsd/03_saf_maf_gl_all/ALL_2_maf"$MIN_MAF"_pctind"$PERCENT_IND"_maxdepth"$MAX_DEPTH_FACTOR".mafs.gz 



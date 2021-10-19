
#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J angsd_gl_all
#SBATCH -p RM
#SBATCH -t 4:00:00
#SBATCH --ntasks-per-node=4
set -e
set -x
# To Run
# sbatch A_02_saf_maf_gl_all.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork

# Call fastp package
module load anaconda3
eval "$(conda shell.bash hook)"
conda activate ANGSD

#prepare variables - avoid to modifyf
NB_CPU=4 #change accordingly in SLURM header
source A_01_config.sh
N_IND=$(wc -l angsd/02_info/bam.filelist | cut -d " " -f 1)
MIN_IND_FLOAT=$(echo "($N_IND * $PERCENT_IND)"| bc -l)
MIN_IND=${MIN_IND_FLOAT%.*} 
MAX_DEPTH=$(echo "($N_IND * $MAX_DEPTH_FACTOR)" |bc -l)

echo " Calculate the SAF, MAF and GL for all individuals listed in 02_info/bam.filelist"
echo "keep loci with at leat one read for n individuals = $MIN_IND, which is $PERCENT_IND % of total $N_IND individuals"
echo "filter on allele frequency = $MIN_MAF"

#Working script
angsd -P $NB_CPU -nQueueSize 50 \
-doMaf 1 -dosaf 1 -GL 2 -doGlf 2 -doMajorMinor 1 -doCounts 1 \
-anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -remove_bads 1 -skipTriallelic 1 -SNP_pval 1e-6 -uniqueOnly 1 -only_proper_pairs 1 -minMapQ 30 -minQ 20 \
-minInd $MIN_IND -minMaf $MIN_MAF -setMaxDepth $MAX_DEPTH \
-b angsd/02_info/bam.filelist \
-out angsd/03_saf_maf_gl_all/all_maf"$MIN_MAF"_pctind"$PERCENT_IND"_maxdepth"$MAX_DEPTH_FACTOR"

#main features
#-P nb of threads -nQueueSize maximum waiting in memory (to optimize CPU usage)
# -doMaf 1 (allele frequencies)  -dosaf (prior for SFS) -GL (Genotype likelihood 2 GATK method - export GL in beagle format  -doGLF2) 
# -doMajorMinor 1 use the most frequent allele as major -doCounts 1 to get allele counts
# -anc provide a ancestral sequence = reference in our case -fold 1 (we want to fold since we have reference instead of ancestral) 
# then have a bunch of different filtering parameters (OPTIONAL): removing bad, triallelic, non-unique, non-paired, bad quality reads
# -rf (file with the region written) i.e. work on a defined region : OPTIONAL
# -b (bamlist) input file
# -out  output file

echo "from the maf file, extract a list of SNP chr, positoin, major all, minor all"

# zip maf files
gunzip angsd/03_saf_maf_gl_all/all_maf"$MIN_MAF"_pctind"$PERCENT_IND"_maxdepth"$MAX_DEPTH_FACTOR".mafs.gz 

# the following will make a list of sites (the SNPs we just called) and index it, for downstream analyses
INFILE=angsd/03_saf_maf_gl_all/all_maf"$MIN_MAF"_pctind"$PERCENT_IND"_maxdepth"$MAX_DEPTH_FACTOR".mafs
OUTFILE_sites=angsd/02_info/sites_all_maf"$MIN_MAF"_pctind"$PERCENT_IND"_maxdepth"$MAX_DEPTH_FACTOR"
OUTFILE_regions=angsd/02_info/regions_all_maf"$MIN_MAF"_pctind"$PERCENT_IND"_maxdepth"$MAX_DEPTH_FACTOR"

Rscript angsd/Rscripts/make_sites_list_maxdepth_simple.R "$INFILE" "$OUTFILE_sites" "$OUTFILE_regions"

angsd sites index $OUTFILE_sites




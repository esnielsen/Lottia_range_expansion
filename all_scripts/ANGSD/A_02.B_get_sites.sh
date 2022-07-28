#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J angsd_sites
#SBATCH -p RM-shared
#SBATCH -t 1:00:00
set -e
set -x
# To Run
# sbatch A_02.B_get_sites.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork

# Call package
module load anaconda3
eval "$(conda shell.bash hook)"
conda activate ANGSD

## Run this script if you want to get the sites and region files for MAF scripts
# 1) extract SNP which passed the MIN_MAF and PERCENT_IND filters & their Major-minor alleles
# 2) order the sites file by chromosome names 
# 3) makes a region file matching the sites files and with same order
# 4) index sites file

source A_01.A_config.sh

echo "from the maf file, extract a list of SNP chr, positoin, major all, minor all"
#gunzip angsd/03_saf_maf_gl_all/all_maf"$MIN_MAF"_pctind"$PERCENT_IND"_maxdepth"$MAX_DEPTH_FACTOR".mafs.gz 

INFILE=angsd/03_saf_maf_gl_all/all_maf"$MIN_MAF"_pctind"$PERCENT_IND"_maxdepth"$MAX_DEPTH_FACTOR".mafs
OUTFILE_sites=02_info/sites_all_maf"$MIN_MAF"_pctind"$PERCENT_IND"_maxdepth"$MAX_DEPTH_FACTOR"
OUTFILE_regions=02_info/regions_all_maf"$MIN_MAF"_pctind"$PERCENT_IND"_maxdepth"$MAX_DEPTH_FACTOR"

Rscript Rscripts/make_sites_list_maxdepth_simple.R "$INFILE" "$OUTFILE_sites" "$OUTFILE_regions"

angsd sites index $OUTFILE_sites

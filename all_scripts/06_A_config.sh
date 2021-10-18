
#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J angsd.config
#SBATCH -p RM-shared
#SBATCH -t 1:00:00

set -e
set -x
# To Run
# sbatch 01_config.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork

#path to bam folder
BAM_PATH=/07_deduplicated

#path to pcaangsd
PCA_ANGSD_PATH=/ocean/projects/deb200006p/enielsen/LGwork/angsd/pcangsd/pcangsd

#filter : will keep SNP above this allele frequency (over all individuals)
MIN_MAF=0.05 

#filter : will keep SNP with at least one read for this percentage of individuals (over all individuals in step 03, and within each pop at step 07)
PERCENT_IND=0.5 

#filter: will keep SNP with at least a coverage of this factor multiplied by the number of ind - across all ind. usually set 2-4
#times the coverage to remove repeated regions
MAX_DEPTH_FACTOR=152

#window size for sliding window FST & Thetas
WINDOW=25000 

#window step
WINDOW_STEP=5000 

#min nb of pop to consider for NGS admix
K_MIN=2 

#maximum nb of pop to consider for NGS admix
K_MAX=5 

#min ind per pop
BMR_minIND=4
C_minIND=5
KR_minIND=4
SP_minIND=5

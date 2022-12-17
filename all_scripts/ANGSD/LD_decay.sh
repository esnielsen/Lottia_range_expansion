#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J LDdecay
#SBATCH -p RM-shared
#SBATCH -t 48:00:00
#SBATCH --ntasks-per-node=40
set -e
set -x
# To Run
# sbatch LD_decay.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork

perl LD/PopLDdecay/bin/mis/plink2genotype.pl -inPED angsd/03_saf_maf_gl_all/LD_core.ped -inMAP angsd/03_saf_maf_gl_all/LD_core.map -outGenotype LD/core.genotype

LD/PopLDdecay/bin/PopLDdecay -InGenotype LD/core.genotype -OutStat LD/core.LD.stat.gz -MAF 0.05

perl LD/PopLDdecay/bin/Plot_OnePop.pl -inFile LD/core.LD.stat.gz -output LD/core.pdf

#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J miss.syn.sfs
#SBATCH -p RM-shared
#SBATCH -t 48:00:00
#SBATCH --ntasks-per-node=4
set -e
set -x
# To Run
# sbatch miss.syn2_sfs.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork/gen_load/ensembl-vep

#create SFSs per pop based on the snps that are either missense or synonymous
realSFS KR.nomaf.synon.saf.idx -P 4 > KR.nomaf.synon.sfs
realSFS FR.nomaf.synon.saf.idx -P 4 > FR.nomaf.synon.sfs
realSFS BB.nomaf.synon.saf.idx -P 4 > BB.nomaf.synon.sfs
realSFS DB.nomaf.synon.saf.idx -P 4 > DB.nomaf.synon.sfs
realSFS HP.nomaf.synon.saf.idx -P 4 > HP.nomaf.synon.sfs
realSFS CR.nomaf.synon.saf.idx -P 4 > CR.nomaf.synon.sfs
realSFS SB.nomaf.synon.saf.idx -P 4 > SB.nomaf.synon.sfs

realSFS KR.nomaf.mis.saf.idx -P 4 > KR.nomaf.mis.sfs
realSFS FR.nomaf.mis.saf.idx -P 4 > FR.nomaf.mis.sfs
realSFS BB.nomaf.mis.saf.idx -P 4 > BB.nomaf.mis.sfs
realSFS DB.nomaf.mis.saf.idx -P 4 > DB.nomaf.mis.sfs
realSFS HP.nomaf.mis.saf.idx -P 4 > HP.nomaf.mis.sfs
realSFS CR.nomaf.mis.saf.idx -P 4 > CR.nomaf.mis.sfs
realSFS SB.nomaf.mis.saf.idx -P 4 > SB.nomaf.mis.sfs

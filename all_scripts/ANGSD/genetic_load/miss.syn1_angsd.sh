#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J miss.syn.angsd
#SBATCH -p RM-shared
#SBATCH -t 48:00:00
#SBATCH --ntasks-per-node=40
set -e
set -x
# To Run
# sbatch miss.syn1_angsd.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork

#index sites for either missense or synonymous
angsd sites index gen_load/ensembl-vep/syn.vep.sites
angsd sites index gen_load/ensembl-vep/miss.vep.sites


GENOME_REF=03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa
TODO="-doSaf 1 -anc $GENOME_REF -ref $GENOME_REF"

#number of samples per pop
#KR 30
#FR 30
#BB 30
#DB 30
#HP 30
#CR 30
#SB 29

#Run angsd only on sites of either miss or syn
# too lazy to do for looop
angsd -sites gen_load/ensembl-vep/syn.vep.sites -b 02_info/KRbam.filelist -GL 1 -P 1 -minInd 15 $TODO -out gen_load/ensembl-vep/KR.nomaf.synon 
angsd -sites gen_load/ensembl-vep/syn.vep.sites -b 02_info/FRbam.filelist -GL 1 -P 1 -minInd 15 $TODO -out gen_load/ensembl-vep/FR.nomaf.synon
angsd -sites gen_load/ensembl-vep/syn.vep.sites -b 02_info/BBbam.filelist -GL 1 -P 1 -minInd 15 $TODO -out gen_load/ensembl-vep/BB.nomaf.synon 
angsd -sites gen_load/ensembl-vep/syn.vep.sites -b 02_info/DBbam.filelist -GL 1 -P 1 -minInd 15 $TODO -out gen_load/ensembl-vep/DB.nomaf.synon 
angsd -sites gen_load/ensembl-vep/syn.vep.sites -b 02_info/HPbam.filelist -GL 1 -P 1 -minInd 15 $TODO -out gen_load/ensembl-vep/HP.nomaf.synon 
angsd -sites gen_load/ensembl-vep/syn.vep.sites -b 02_info/CRbam.filelist -GL 1 -P 1 -minInd 15 $TODO -out gen_load/ensembl-vep/CR.nomaf.synon 
angsd -sites gen_load/ensembl-vep/syn.vep.sites -b 02_info/SBbam.filelist -GL 1 -P 1 -minInd 15 $TODO -out gen_load/ensembl-vep/SB.nomaf.synon 
 
angsd -sites gen_load/ensembl-vep/miss.vep.sites -b 02_info/KRbam.filelist -GL 1 -P 1 -minInd 15 $TODO -out gen_load/ensembl-vep/KR.nomaf.mis
angsd -sites gen_load/ensembl-vep/miss.vep.sites -b 02_info/FRbam.filelist -GL 1 -P 1 -minInd 15 $TODO -out gen_load/ensembl-vep/FR.nomaf.mis
angsd -sites gen_load/ensembl-vep/miss.vep.sites -b 02_info/BBbam.filelist -GL 1 -P 1 -minInd 15 $TODO -out gen_load/ensembl-vep/BB.nomaf.mis 
angsd -sites gen_load/ensembl-vep/miss.vep.sites -b 02_info/DBbam.filelist -GL 1 -P 1 -minInd 15 $TODO -out gen_load/ensembl-vep/DB.nomaf.mis 
angsd -sites gen_load/ensembl-vep/miss.vep.sites -b 02_info/HPbam.filelist -GL 1 -P 1 -minInd 15 $TODO -out gen_load/ensembl-vep/HP.nomaf.mis
angsd -sites gen_load/ensembl-vep/miss.vep.sites -b 02_info/CRbam.filelist -GL 1 -P 1 -minInd 15 $TODO -out gen_load/ensembl-vep/CR.nomaf.mis 
angsd -sites gen_load/ensembl-vep/miss.vep.sites -b 02_info/SBbam.filelist -GL 1 -P 1 -minInd 15 $TODO -out gen_load/ensembl-vep/SB.nomaf.mis  



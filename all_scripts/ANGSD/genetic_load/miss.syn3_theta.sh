#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J miss.syn.theta
#SBATCH -p RM-shared
#SBATCH -t 48:00:00
#SBATCH --ntasks-per-node=4
set -e
set -x
# To Run
# sbatch miss.syn3_theta.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork

#run theta pest per type of snp per pop

GENOME_REF=03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa
TODO="-doSaf 1 -doThetas 1 -anc $GENOME_REF -ref $GENOME_REF"

angsd -sites gen_load/ensembl-vep/syn.vep.sites -b 02_info/KRbam.filelist -GL 1 -P 4 $TODO -pest gen_load/ensembl-vep/KR.nomaf.synon.sfs -out gen_load/ensembl-vep/KR.nomaf.synon 
angsd -sites gen_load/ensembl-vep/syn.vep.sites -b 02_info/FRbam.filelist -GL 1 -P 4 $TODO -pest gen_load/ensembl-vep/FR.nomaf.synon.sfs -out gen_load/ensembl-vep/FR.nomaf.synon 
angsd -sites gen_load/ensembl-vep/syn.vep.sites -b 02_info/BBbam.filelist -GL 1 -P 4 $TODO -pest gen_load/ensembl-vep/BB.nomaf.synon.sfs -out gen_load/ensembl-vep/BB.nomaf.synon
angsd -sites gen_load/ensembl-vep/syn.vep.sites -b 02_info/DBbam.filelist -GL 1 -P 4 $TODO -pest gen_load/ensembl-vep/DB.nomaf.synon.sfs -out gen_load/ensembl-vep/DB.nomaf.synon
angsd -sites gen_load/ensembl-vep/syn.vep.sites -b 02_info/HPbam.filelist -GL 1 -P 4 $TODO -pest gen_load/ensembl-vep/HP.nomaf.synon.sfs -out gen_load/ensembl-vep/HP.nomaf.synon
angsd -sites gen_load/ensembl-vep/syn.vep.sites -b 02_info/CRbam.filelist -GL 1 -P 4 $TODO -pest gen_load/ensembl-vep/CR.nomaf.synon.sfs -out gen_load/ensembl-vep/CR.nomaf.synon
angsd -sites gen_load/ensembl-vep/syn.vep.sites -b 02_info/SBbam.filelist -GL 1 -P 4 $TODO -pest gen_load/ensembl-vep/SB.nomaf.synon.sfs -out gen_load/ensembl-vep/SB.nomaf.synon


angsd -sites gen_load/ensembl-vep/miss.vep.sites -b 02_info/KRbam.filelist -GL 1 -P 4 $TODO -pest gen_load/ensembl-vep/KR.nomaf.mis.sfs -out gen_load/ensembl-vep/KR.nomaf.mis
angsd -sites gen_load/ensembl-vep/miss.vep.sites -b 02_info/FRbam.filelist -GL 1 -P 4 $TODO -pest gen_load/ensembl-vep/FR.nomaf.mis.sfs -out gen_load/ensembl-vep/FR.nomaf.mis
angsd -sites gen_load/ensembl-vep/miss.vep.sites -b 02_info/BBbam.filelist -GL 1 -P 4 $TODO -pest gen_load/ensembl-vep/BB.nomaf.mis.sfs -out gen_load/ensembl-vep/BB.nomaf.mis
angsd -sites gen_load/ensembl-vep/miss.vep.sites -b 02_info/DBbam.filelist -GL 1 -P 4 $TODO -pest gen_load/ensembl-vep/DB.nomaf.mis.sfs -out gen_load/ensembl-vep/DB.nomaf.mis
angsd -sites gen_load/ensembl-vep/miss.vep.sites -b 02_info/HPbam.filelist -GL 1 -P 4 $TODO -pest gen_load/ensembl-vep/HP.nomaf.mis.sfs -out gen_load/ensembl-vep/HP.nomaf.mis
angsd -sites gen_load/ensembl-vep/miss.vep.sites -b 02_info/CRbam.filelist -GL 1 -P 4 $TODO -pest gen_load/ensembl-vep/CR.nomaf.mis.sfs -out gen_load/ensembl-vep/CR.nomaf.mis
angsd -sites gen_load/ensembl-vep/miss.vep.sites -b 02_info/SBbam.filelist -GL 1 -P 4 $TODO -pest gen_load/ensembl-vep/SB.nomaf.mis.sfs -out gen_load/ensembl-vep/SB.nomaf.mis


#Do a sliding window analysis to get theta values per pop, and then follow steps as before where we divide tW column by nsites column, then average those values per pop
for i in gen_load/ensembl-vep/*thetas.idx; do thetaStat do_stat $i -win $WINDOW -step $WINDOW_STEP -outnames ${i/%.thetas.idx/}.thetaswindow;  done

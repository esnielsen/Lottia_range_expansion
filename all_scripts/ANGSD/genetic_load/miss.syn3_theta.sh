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

POP_FILE1=02_info/pop2.txt #change with pops

#prepare variables - avoid to modify
num_pops=$(wc -l "$POP_FILE1" | cut -d " " -f 1)

# Do saf/maf for all population listed
cat $POP_FILE1 | while read i
do
echo $i

angsd -sites gen_load/ensembl-vep/syn.vep.sites -b 02_info/"$i"bam.filelist -GL 1 -P 30 $TODO -pest gen_load/ensembl-vep/"$i".nomaf.synon.sfs -out gen_load/ensembl-vep/"$i".nomaf.synon
angsd -sites gen_load/ensembl-vep/miss.vep.sites -b 02_info/"$i"bam.filelist -GL 1 -P 30 $TODO -pest gen_load/ensembl-vep/"$i".nomaf.mis.sfs -out gen_load/ensembl-vep/"$i".nomaf.miss

done

#we now run the thetaStat calcs in ANGSD for each pop
for i in gen_load/ensembl-vep/*thetas.idx; do thetaStat do_stat $i; done
for i in gen_load/ensembl-vep/*thetas.idx; do thetaStat print $i > $i.logscaled; done
for i in gen_load/ensembl-vep/*logscaled; do awk '{print exp($4*log(10));}' $i | tail -n +2 > ${i/%.logscaled/}.raw; done

#this will then give the average theta per pop as output
for i in gen_load/ensembl-vep/*.raw; do awk '{ total += $1 } END { print total/NR }' $i; echo $i;  done

###
## NOT USED:
#Do a sliding window analysis to get theta values per pop, and then follow steps as before where we divide tW column by nsites column, then average those values per pop
for i in gen_load/ensembl-vep/*thetas.idx; do thetaStat do_stat $i -win $WINDOW -step $WINDOW_STEP -outnames ${i/%.thetas.idx/}.thetaswindow;  done

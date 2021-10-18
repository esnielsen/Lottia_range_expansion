
#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J angsd_pop_saf
#SBATCH -p RM
#SBATCH -t 3:00:00
#SBATCH --ntasks-per-node=3
set -e
set -x
# To Run
# sbatch A_05_saf_maf_pop.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork

###this script will work on bamfiles by population and calculate saf  & maf 

NB_CPU=3 #change accordingly in SLURM header
POP_FILE1=angsd/02_info/pop.txt #choose on which list of pop run the analyses

#prepare variables - avoid to modify
source A_01_config.sh

# Do saf/maf for all population listed
cat $POP_FILE1 | while read i
do
echo $i

#mkdir 06_saf_maf_by_pop/$i
#MIN_IND=$(echo $i"_minIND")

# NB: Not sure if we want to do MAF filtering here??? Depends on if we use output for SFS or not.... (no MAF filtering if creating SFS!)
angsd -P $NB_CPU -nQueueSize 50 \
-doMaf 1 -dosaf 1 -GL 2 -doMajorMinor 3 \
-anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa \
-minMapQ 30 -minQ 20 -uniqueOnly 1 -remove_bads 1 -only_proper_pairs 1 -skipTriallelic 1 -minInd 4 -setMinDepthInd 3 \
-sites angsd/02_info/sites_all_maf0.05_pctind0.5_maxdepth152 \
-rf angsd/02_info/regions_all_maf0.05_pctind0.5_maxdepth152 \
-b angsd/02_info/"$i"bam.filelist -out angsd/06_saf_maf_by_pop/"$i"/"$i"_maf"$MIN_MAF"_pctind"$PERCENT_IND"_maxdepth"$MAX_DEPTH_FACTOR"
done

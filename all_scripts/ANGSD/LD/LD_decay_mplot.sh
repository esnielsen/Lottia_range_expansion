#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J LDdecay_mplot
#SBATCH -p RM-shared
#SBATCH -t 48:00:00
#SBATCH --ntasks-per-node=1
set -e
set -x
# To Run
# sbatch LD_decay_mplot.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork

#this is for once you already ran LDdecay.sh script per each region, and now we plot multiple curves on single plot
# 'LD.plot.list' is two column file, first col is path to .stat.gz outputs, second col is name of the region/pop

perl LD/PopLDdecay/bin/Plot_MultiPop.pl -inList LD/LD.plot.list -output LD/multi.ld.pdf

#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J mom_modselR
#SBATCH -p RM-shared
#SBATCH -t 1:00:00
#SBATCH --ntasks-per-node=1
set -e
set -x
# To Run
# To Run
# sbatch M6_modselR.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork/Moment

# the following script will create the script to actually run all the Moments models (i.e. the "modelsel.runs" output)
# in the following parameters, you can indicate lower number of samples per population as downsampling

Rscript AFS-analysis-with-moments/work/modSel_write.R contrast=CA.s.Mex args="CA.s Mex 48 48 0.0018 0.002" folded=TRUE

#args = pop1 name/ pop2 name/ pop projections (1.6N for each population rounded to integer)/ mutation rate (per genotyped portion of the genome per generation)/ generation time in thousands of years

#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J stair_sfs
#SBATCH -p RM-shared
#SBATCH -t 48:00:00
#SBATCH --ntasks-per-node=4
set -e
set -x
# To Run
# sbatch stair_01_sfs.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork

#following these sites:
# https://github.com/ANGSD/angsd/issues/101
# https://github.com/ANGSD/angsd/issues/240

#CAn=120
#CAc=269
#CAs(SC.CB.PB.SR)=124
#Mex(BA.BT)=59

#first create .idx.ml files with realSFS per population
realSFS angsd/03_saf_maf_gl_all/regions/p.CA.n_maf0.05_pctind0.5_maxdepth15.saf.idx > stairway/p.CA.n.idx.ml
realSFS angsd/03_saf_maf_gl_all/regions/p.CA.c_maf0.05_pctind0.5_maxdepth15.saf.idx > stairway/p.CA.c.idx.ml

realSFS angsd/03_saf_maf_gl_all/regions/SC.CB.PB.SR_maf0.05_pctind0.5_maxdepth15.saf.idx > stairway/SC.CB.PB.SR.idx.ml
realSFS angsd/03_saf_maf_gl_all/regions/BA.BT_maf0.05_pctind0.5_maxdepth15.saf.idx > stairway/BA.BT.idx.ml

#create dadi-style SFSs with angsd
#here we fold because we don't have anc genome
#realSFS dadi angsd/03_saf_maf_gl_all/regions/p.CA.n_maf0.05_pctind0.5_maxdepth15.saf.idx angsd/03_saf_maf_gl_all/regions/p.CA.c_maf0.05_pctind0.5_maxdepth15.saf.idx -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -sfs stairway/p.CA.n.idx.ml -sfs stairway/p.CA.c.idx.ml -fold 1 -P 4 > stairway/CA.n.c.dadiout
realSFS dadi angsd/03_saf_maf_gl_all/regions/SC.CB.PB.SR_maf0.05_pctind0.5_maxdepth15.saf.idx angsd/03_saf_maf_gl_all/regions/BA.BT_maf0.05_pctind0.5_maxdepth15.saf.idx -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -sfs stairway/SC.CB.PB.SR.idx.ml -sfs stairway/BA.BT.idx.ml -fold 1 -P 4 > stairway/CAs.Mex.NEW.dadiout

#convert to 'proper' dadi file
#here the 2 numbers are the nb. of individs in each pop
#stairway/realsfs2dadi.pl stairway/CA.n.c.dadiout 120 269 > stairway/CA.n.c_dadi.dat
stairway/realsfs2dadi.pl stairway/CAs.Mex.NEW.dadiout 124 59 > stairway/CAs.Mex.NEW_dadi.dat

#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J stair_build_BP
#SBATCH -p RM-shared
#SBATCH -t 48:00:00
#SBATCH --ntasks-per-node=1
set -e
set -x
# To Run
# sbatch stair_03_build_BP.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork/stairway

#this script will build your stairway input file (what we use to run program) based on the blueprint txt files per pop (see example BP files in directory)
java -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es Stairbuilder Mex.NEW_blueprint.txt
java -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es Stairbuilder CA.s.NEW_blueprint.txt
java -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es Stairbuilder CA.n.blueprint.txt
java -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es Stairbuilder CA.c.blueprint.txt

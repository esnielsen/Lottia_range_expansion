#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J stair_run_Mex.NEW
#SBATCH -p RM-shared
#SBATCH -t 48:00:00
#SBATCH --ntasks-per-node=40
set -e
set -x
# To Run
# sbatch stair_04_run.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork/stairway

### copy & paste the blueprint.txt.sh output below

# Step 1: create .addTheta files. random_seed=-1563435580386253447
date
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-1 29 0.67 462645350704139087
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-2 29 0.67 -3762247532853385045
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-3 29 0.67 -4093364853981719101
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-4 29 0.67 -4841489816824285222
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-5 29 0.67 -6884930575332808047
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-6 29 0.67 -7278624802418364075
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-7 29 0.67 2559329552216909009
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-8 29 0.67 7444357479136020170
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-9 29 0.67 6594222776529219849
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-10 29 0.67 8866519922821072962
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-11 29 0.67 -5315088015016424936
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-12 29 0.67 1062453972421002665
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-13 29 0.67 5798134835980034133
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-14 29 0.67 -37353000308620147
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-15 29 0.67 6845542322851385079
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-16 29 0.67 -4482643970635543002
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-17 29 0.67 7448593477694505910
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-18 29 0.67 -1659548467396552298
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-19 29 0.67 4715301261021232306
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-20 29 0.67 4102395363558790768
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-21 29 0.67 -3893666983932804972
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-22 29 0.67 -3639529085385401474
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-23 29 0.67 -7768009587509398286
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-24 29 0.67 -197655954104599106
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-25 29 0.67 5292072499455145720
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-26 29 0.67 -7673184828013554770
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-27 29 0.67 4058804179965729347
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-28 29 0.67 5234026968994605257
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-29 29 0.67 -8830549468067139056
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-30 29 0.67 7434958411290879312
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-31 29 0.67 -7237795861657286507
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-32 29 0.67 -8223457072169750963
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-33 29 0.67 -5370016734873950034
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-34 29 0.67 -161174692528061996
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-35 29 0.67 8016369783329447356
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-36 29 0.67 1202757660731216780
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-37 29 0.67 3531684041706180042
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-38 29 0.67 4093853621408542061
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-39 29 0.67 7861536625230303728
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-40 29 0.67 6240873645913757898
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-41 29 0.67 3905855976632758524
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-42 29 0.67 -2033703140526304366
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-43 29 0.67 -5057124916803903410
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-44 29 0.67 -8996208016594086446
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-45 29 0.67 -442430517224706302
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-46 29 0.67 6054268309057416061
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-47 29 0.67 8457643646463737684
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-48 29 0.67 -2096944704821647761
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-49 29 0.67 -4684154363224673728
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-50 29 0.67 -9186362206515319633
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-51 29 0.67 -5794671472317355671
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-52 29 0.67 164079217549240052
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-53 29 0.67 -8118318289843010757
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-54 29 0.67 -6655355410454949014
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-55 29 0.67 5121159846841414995
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-56 29 0.67 -5894969728202030923
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-57 29 0.67 3562754214809659677
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-58 29 0.67 5537191629819311414
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-59 29 0.67 3451269825470414526
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-60 29 0.67 2726122746896287372
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-61 29 0.67 2619661543412668981
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-62 29 0.67 370261706054378844
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-63 29 0.67 4495712115638558396
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-64 29 0.67 -7617935977261506219
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-65 29 0.67 -4904732196920542092
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-66 29 0.67 5666091481049868654
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-67 29 0.67 -2739164249138826176
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-68 29 0.67 -5639791912272819086
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-69 29 0.67 -842049464020568592
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-70 29 0.67 -3125962139702395459
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-71 29 0.67 -1507253858580251486
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-72 29 0.67 -3063498754196037049
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-73 29 0.67 3900862040231021924
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-74 29 0.67 1650378493829638625
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-75 29 0.67 -1280257746476631010
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-76 29 0.67 -4972052199251969857
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-77 29 0.67 1185020336337672878
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-78 29 0.67 -5160452265305266890
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-79 29 0.67 6211119701224552020
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-80 29 0.67 2425035928149331397
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-81 29 0.67 -2272129489737529520
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-82 29 0.67 -2444219087322018983
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-83 29 0.67 5594678440844588746
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-84 29 0.67 4039400659842565068
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-85 29 0.67 8836247095312899825
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-86 29 0.67 -5108621267356163922
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-87 29 0.67 8685661519081204069
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-88 29 0.67 -3675544259925135800
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-89 29 0.67 3135053224393240537
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-90 29 0.67 7732046490358294237
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-91 29 0.67 -8320592099689266444
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-92 29 0.67 8744684693349576243
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-93 29 0.67 -3267922037530379400
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-94 29 0.67 -897810382770044591
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-95 29 0.67 8562206091910052261
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-96 29 0.67 412275107879624329
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-97 29 0.67 7807764249625605855
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-98 29 0.67 -5488218692063581768
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-99 29 0.67 5577373844754910606
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-100 29 0.67 5138737104691286220
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-101 29 0.67 1939893673448037189
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-102 29 0.67 8132872012338164870
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-103 29 0.67 8686443122760425765
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-104 29 0.67 -7957083479582467712
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-105 29 0.67 -6705013162943740285
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-106 29 0.67 6883547872622142833
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-107 29 0.67 6416665086459224520
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-108 29 0.67 -6730439772472070992
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-109 29 0.67 6460264090327182233
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-110 29 0.67 -969122661682785290
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-111 29 0.67 3353511395883581495
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-112 29 0.67 -6766356531635582361
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-113 29 0.67 -5235411398766816473
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-114 29 0.67 -6962077887992455213
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-115 29 0.67 2942089671330429205
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-116 29 0.67 7185698882569042744
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-117 29 0.67 1979510084809354228
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-118 29 0.67 -4696077551973141109
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-119 29 0.67 6789976712936844650
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-120 29 0.67 -7003164140138619721
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-121 29 0.67 -3247885012833866901
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-122 29 0.67 228747798407291621
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-123 29 0.67 -2870367457440888029
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-124 29 0.67 3962707689002991102
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-125 29 0.67 2052872968044789273
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-126 29 0.67 -4990164310792176787
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-127 29 0.67 477566759050151313
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-128 29 0.67 156183337660238889
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-129 29 0.67 -5001040702276990927
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-130 29 0.67 4263987132757495026
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-131 29 0.67 -5603233204911317530
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-132 29 0.67 -5637624847051387174
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-133 29 0.67 -7144792790140963320
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-134 29 0.67 6830337158142059526
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-135 29 0.67 -865628642122712133
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-136 29 0.67 -6459520173704186698
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-137 29 0.67 5685111353769024665
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-138 29 0.67 -941942273407508350
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-139 29 0.67 -3394363320234748531
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-140 29 0.67 9080161951920238565
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-141 29 0.67 2715239303224437249
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-142 29 0.67 5986375052668639743
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-143 29 0.67 -2940955561321043653
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-144 29 0.67 2228990366905721494
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-145 29 0.67 -7559186319573260796
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-146 29 0.67 3611796264794346589
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-147 29 0.67 -9098463160336137078
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-148 29 0.67 -2789912778086540423
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-149 29 0.67 -4354224572072787321
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-150 29 0.67 -4600792344838175680
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-151 29 0.67 3877088153432677793
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-152 29 0.67 -268274718373387709
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-153 29 0.67 -272210700500812781
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-154 29 0.67 -1113987272113855602
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-155 29 0.67 7381030536076065677
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-156 29 0.67 -2024344720742984659
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-157 29 0.67 -329798363046131111
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-158 29 0.67 -6821775128935918094
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-159 29 0.67 -4041640161183273282
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-160 29 0.67 1575917396815859830
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-161 29 0.67 -7417603877486747479
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-162 29 0.67 -3886274401216619172
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-163 29 0.67 -8845657629792413304
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-164 29 0.67 9049897783917884636
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-165 29 0.67 -86409401235423623
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-166 29 0.67 -6510881688503624065
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-167 29 0.67 1768254257115695268
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-168 29 0.67 4065177103296866855
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-169 29 0.67 -4317350705679790108
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-170 29 0.67 -14003085926746798
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-171 29 0.67 -4705146110686176340
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-172 29 0.67 -6029783768800395105
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-173 29 0.67 -1964613566053917144
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-174 29 0.67 7807926977299126672
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-175 29 0.67 9071121191501249954
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-176 29 0.67 -3114703568492258160
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-177 29 0.67 4061350295984328743
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-178 29 0.67 3692853281655575352
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-179 29 0.67 6741851943489252713
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-180 29 0.67 -3849949971885395251
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-181 29 0.67 -1443717229567575321
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-182 29 0.67 3030266630984122125
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-183 29 0.67 -4741280789179214261
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-184 29 0.67 -8305545956382698198
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-185 29 0.67 -9050524841025076718
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-186 29 0.67 -8608231275053702378
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-187 29 0.67 -5340293544450606991
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-188 29 0.67 -440312283106521343
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-189 29 0.67 838244160642140279
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-190 29 0.67 238594529744556831
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-191 29 0.67 -693433311236234898
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-192 29 0.67 -4999484777607835218
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-193 29 0.67 -7642477435871612793
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-194 29 0.67 2074847029967742263
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-195 29 0.67 605089520856413365
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-196 29 0.67 -7583035421162573549
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-197 29 0.67 6301330981946682584
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-198 29 0.67 -6200507052739971536
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-199 29 0.67 -7547959447249566690
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-200 29 0.67 5813759236538593301
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-1 58 0.67 -5640208160182771546
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-2 58 0.67 -177121558184657373
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-3 58 0.67 2231813052705519717
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-4 58 0.67 -6135999230389461731
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-5 58 0.67 -267558414361620403
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-6 58 0.67 710683412584510697
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-7 58 0.67 -8170709950933349973
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-8 58 0.67 -5952155767935009129
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-9 58 0.67 -705710784599481904
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-10 58 0.67 1022406265785616034
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-11 58 0.67 6297567413775386611
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-12 58 0.67 -7314738956010893450
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-13 58 0.67 -2720020013555651243
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-14 58 0.67 1326847445569574962
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-15 58 0.67 -1089252711388630106
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-16 58 0.67 4720946405483744174
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-17 58 0.67 6066604263135944103
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-18 58 0.67 -8603578952274715713
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-19 58 0.67 1245045949083936272
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-20 58 0.67 -8458423962909029191
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-21 58 0.67 85726492459262131
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-22 58 0.67 -1626382608139651787
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-23 58 0.67 -5147254998616749600
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-24 58 0.67 2665118165314713107
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-25 58 0.67 -5154078079629023221
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-26 58 0.67 414469722549530306
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-27 58 0.67 -5462563187118201940
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-28 58 0.67 4318313722487288254
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-29 58 0.67 -7735220237445334682
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-30 58 0.67 1495673323337842010
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-31 58 0.67 8093509011279768171
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-32 58 0.67 -599200383978029889
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-33 58 0.67 -7393722703521755362
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-34 58 0.67 4283378003408098612
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-35 58 0.67 -4394932024313729031
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-36 58 0.67 6371528306841437087
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-37 58 0.67 -2571083675193505616
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-38 58 0.67 7450985004136271435
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-39 58 0.67 -2537682151949854314
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-40 58 0.67 -6125820232929603862
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-41 58 0.67 5429941416522705728
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-42 58 0.67 -2585742845408569122
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-43 58 0.67 -5660881855550429081
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-44 58 0.67 8088296370462867379
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-45 58 0.67 -8800529322775694830
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-46 58 0.67 -4665308300738379280
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-47 58 0.67 -353417184688139788
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-48 58 0.67 1236552751772589071
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-49 58 0.67 -4516862443374596334
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-50 58 0.67 5024085905514973128
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-51 58 0.67 8126736241677199528
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-52 58 0.67 2514022537669012373
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-53 58 0.67 6723103365107972941
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-54 58 0.67 -2278713174407479694
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-55 58 0.67 -1648892217468464043
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-56 58 0.67 5734642612543267813
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-57 58 0.67 -7047746488698292362
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-58 58 0.67 -1390714872909380547
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-59 58 0.67 -1667562743426803027
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-60 58 0.67 3579784797318489374
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-61 58 0.67 52259189848824930
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-62 58 0.67 -369188865826159044
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-63 58 0.67 -8333601914652837942
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-64 58 0.67 -8012794453833628059
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-65 58 0.67 -4881456599296304244
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-66 58 0.67 -5764961930131516219
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-67 58 0.67 -3302093806445967705
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-68 58 0.67 8692849919450477157
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-69 58 0.67 6094495711008804754
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-70 58 0.67 -6314489535544719372
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-71 58 0.67 904810908123265444
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-72 58 0.67 -7826024559901928502
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-73 58 0.67 -8109470730628334410
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-74 58 0.67 -8993503467456859095
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-75 58 0.67 -6465967177687686394
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-76 58 0.67 766336732383089093
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-77 58 0.67 -4804840436479008419
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-78 58 0.67 7926266049581035142
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-79 58 0.67 8582698736579169652
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-80 58 0.67 -959015483210277749
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-81 58 0.67 556397055185950355
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-82 58 0.67 1995509668970553714
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-83 58 0.67 -7259086656247995269
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-84 58 0.67 -1304773471147062826
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-85 58 0.67 7174451002690945158
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-86 58 0.67 1156767734895456536
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-87 58 0.67 2305823842675027211
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-88 58 0.67 5066346183348814178
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-89 58 0.67 -2869632580662833401
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-90 58 0.67 -8213659556146597911
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-91 58 0.67 -2332801534345884167
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-92 58 0.67 3876909092749261169
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-93 58 0.67 553470225654664716
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-94 58 0.67 4910432231685415702
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-95 58 0.67 -7667641087368845189
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-96 58 0.67 8467159705605899080
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-97 58 0.67 5213589417530213936
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-98 58 0.67 584122519298135830
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-99 58 0.67 -8420241350494732113
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-100 58 0.67 8580788385437411248
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-101 58 0.67 3013657916679925042
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-102 58 0.67 -8143704870813285338
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-103 58 0.67 4326683193841251860
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-104 58 0.67 -2639420948507749515
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-105 58 0.67 -840763355852216718
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-106 58 0.67 1571733532940321476
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-107 58 0.67 -426932728536937458
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-108 58 0.67 -3224515270049573910
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-109 58 0.67 -8399148349481430153
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-110 58 0.67 6536203501453283380
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-111 58 0.67 -1911362489093782938
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-112 58 0.67 1790750369698816868
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-113 58 0.67 2366190349502968939
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-114 58 0.67 2043138516308157179
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-115 58 0.67 -8682004712219787832
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-116 58 0.67 1761064965579687355
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-117 58 0.67 5708022147096975517
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-118 58 0.67 -7867322418729365658
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-119 58 0.67 -304019354575126460
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-120 58 0.67 -5649640496470494004
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-121 58 0.67 -8625871110413967618
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-122 58 0.67 -437516403057771516
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-123 58 0.67 -2596048651858529842
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-124 58 0.67 -5582487041441620743
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-125 58 0.67 4358259319822927525
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-126 58 0.67 5957092923441309224
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-127 58 0.67 1239712937354754238
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-128 58 0.67 -3413716802885572185
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-129 58 0.67 -4192219888138318005
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-130 58 0.67 -694283485413706136
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-131 58 0.67 4983247982158979665
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-132 58 0.67 7681637251308347838
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-133 58 0.67 -1507811630463178288
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-134 58 0.67 8326506631181608225
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-135 58 0.67 -1399642106529948890
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-136 58 0.67 -3325983398686403539
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-137 58 0.67 -4380216006775310156
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-138 58 0.67 8205291399221604080
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-139 58 0.67 -3751744013183879231
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-140 58 0.67 3585839117763466340
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-141 58 0.67 -2548498136866873186
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-142 58 0.67 529127324488390970
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-143 58 0.67 7369400740950904075
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-144 58 0.67 7880254640944776921
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-145 58 0.67 -3543449974051526439
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-146 58 0.67 -82822564382357851
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-147 58 0.67 -178495244618655536
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-148 58 0.67 8374774318564441476
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-149 58 0.67 -4008489208129770542
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-150 58 0.67 918029685519997853
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-151 58 0.67 -6134510906726696384
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-152 58 0.67 -6797863676664388510
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-153 58 0.67 4500393247778281371
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-154 58 0.67 -3184970248671071536
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-155 58 0.67 -7142915513186977170
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-156 58 0.67 -5636784280483709451
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-157 58 0.67 -7040369450300375445
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-158 58 0.67 -1579557306751770190
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-159 58 0.67 -5151919689438583596
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-160 58 0.67 -5074098342444552254
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-161 58 0.67 -4312199784181532900
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-162 58 0.67 -4447046840815792902
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-163 58 0.67 -5674517913103585331
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-164 58 0.67 6381034001636253394
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-165 58 0.67 494915506588487084
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-166 58 0.67 8914882906077613347
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-167 58 0.67 3166631316447606042
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-168 58 0.67 802657389444979761
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-169 58 0.67 -2737893597026630724
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-170 58 0.67 2305553508032717548
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-171 58 0.67 -6410606204813018530
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-172 58 0.67 2245231501281763699
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-173 58 0.67 7215442184843403540
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-174 58 0.67 -4394791556964795432
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-175 58 0.67 -5594892138848024158
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-176 58 0.67 5487837746008366378
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-177 58 0.67 -1597817179422141411
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-178 58 0.67 5683799680343885487
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-179 58 0.67 8625786153989855697
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-180 58 0.67 6562038816236261233
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-181 58 0.67 -7400764774571253147
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-182 58 0.67 -9018578145145382917
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-183 58 0.67 -5422069740878461123
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-184 58 0.67 -7367130808141449628
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-185 58 0.67 1576226113484908831
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-186 58 0.67 -3361933543764255092
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-187 58 0.67 1012096781779442712
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-188 58 0.67 1182149132900321957
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-189 58 0.67 2142396265694391712
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-190 58 0.67 6252228828874336245
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-191 58 0.67 1311438409371511036
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-192 58 0.67 -8095651891499152423
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-193 58 0.67 -4074145808622830109
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-194 58 0.67 1697461700058592524
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-195 58 0.67 6595450758700395876
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-196 58 0.67 -5185224782637294295
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-197 58 0.67 2341876544046883078
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-198 58 0.67 1275576560158842478
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-199 58 0.67 -168241597551292368
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-200 58 0.67 882844783830495682
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-1 87 0.67 7532277005301290955
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-2 87 0.67 8272507238606751992
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-3 87 0.67 -3174772797613119451
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-4 87 0.67 -505118807685723819
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-5 87 0.67 -4521472958553723624
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-6 87 0.67 8157641028210731599
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-7 87 0.67 6096990029188912235
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-8 87 0.67 9126990788965973143
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-9 87 0.67 -1353627471450548617
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-10 87 0.67 -2598678085623849639
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-11 87 0.67 4911920664388674829
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-12 87 0.67 -3302235285235197502
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-13 87 0.67 -6655969317018245993
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-14 87 0.67 8240328014193559234
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-15 87 0.67 236344037829481341
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-16 87 0.67 -2634688433286541037
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-17 87 0.67 1318738440043987913
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-18 87 0.67 8783236279167633785
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-19 87 0.67 4122515692470127373
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-20 87 0.67 -1046404883295555254
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-21 87 0.67 7069329057214057604
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-22 87 0.67 -3087477390163326160
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-23 87 0.67 5452169673699246454
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-24 87 0.67 -7695863332779330515
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-25 87 0.67 8480504546353341409
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-26 87 0.67 1534757685026605279
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-27 87 0.67 7811714963299344213
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-28 87 0.67 3831549936074726149
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-29 87 0.67 -6537086573652087777
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-30 87 0.67 -7237523206710412479
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-31 87 0.67 303432692903393449
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-32 87 0.67 3897189268694080286
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-33 87 0.67 -1312395504017767136
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-34 87 0.67 -1862490537662084267
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-35 87 0.67 -1596924119227329193
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-36 87 0.67 -7736984245884118452
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-37 87 0.67 -1973059009438360341
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-38 87 0.67 -7991916220462442786
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-39 87 0.67 2536932692296042918
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-40 87 0.67 8575535739693333345
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-41 87 0.67 -4262454720576991192
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-42 87 0.67 7535273832475903204
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-43 87 0.67 -1877928674381144381
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-44 87 0.67 -1342203499006297416
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-45 87 0.67 1561060367925779111
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-46 87 0.67 2880682530191960625
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-47 87 0.67 3161447929630788414
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-48 87 0.67 -1025690360205256019
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-49 87 0.67 -4807577168097732647
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-50 87 0.67 2712205463740661205
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-51 87 0.67 8598965971442236300
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-52 87 0.67 8177797601819598883
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-53 87 0.67 -3553559640771259563
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-54 87 0.67 4101816415689121187
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-55 87 0.67 5920748095096810115
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-56 87 0.67 -3822898117143568644
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-57 87 0.67 281987718342977877
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-58 87 0.67 -7111704552684952911
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-59 87 0.67 -6207056689234884128
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-60 87 0.67 -5453337558588778844
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-61 87 0.67 -6789301187451504842
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-62 87 0.67 8245449472283510236
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-63 87 0.67 7657987935593740996
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-64 87 0.67 -1102428726744375673
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-65 87 0.67 8443881153399249916
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-66 87 0.67 -4727821271177604030
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-67 87 0.67 -6933115810122164685
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-68 87 0.67 -7889590200001420649
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-69 87 0.67 -5372492384461616949
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-70 87 0.67 -8885283915172793402
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-71 87 0.67 -516646629694405228
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-72 87 0.67 -3796531984397094969
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-73 87 0.67 -2715967371294334609
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-74 87 0.67 -7375775041359186033
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-75 87 0.67 -5314718098918167756
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-76 87 0.67 8242086876566573202
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-77 87 0.67 -2336919848645841707
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-78 87 0.67 6276288036856087689
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-79 87 0.67 -518458199900595517
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-80 87 0.67 8979252399366453620
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-81 87 0.67 245384380244891024
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-82 87 0.67 4388027135863293410
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-83 87 0.67 -2170540020271488555
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-84 87 0.67 -7376492121536756368
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-85 87 0.67 -4040287035415397803
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-86 87 0.67 -3149610302676307570
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-87 87 0.67 3180135425966465122
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-88 87 0.67 807968187279966857
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-89 87 0.67 -2050087401398563201
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-90 87 0.67 -2068281537798398780
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-91 87 0.67 -5140329953774882490
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-92 87 0.67 -7684886081474425272
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-93 87 0.67 -2948272264848143733
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-94 87 0.67 1857798871710965888
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-95 87 0.67 866029773871407810
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-96 87 0.67 1626806254656881212
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-97 87 0.67 1426643897089764509
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-98 87 0.67 -1758467209860592129
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-99 87 0.67 -2453041227620794631
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-100 87 0.67 -1052622465519406986
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-101 87 0.67 -666130746038466310
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-102 87 0.67 1744075015916843845
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-103 87 0.67 -5912163361898240908
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-104 87 0.67 -1087515003016974327
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-105 87 0.67 7073776663908936332
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-106 87 0.67 2705202626142842778
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-107 87 0.67 -4198294102018101602
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-108 87 0.67 -4896959013717362288
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-109 87 0.67 7541109741219808097
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-110 87 0.67 -1074740114136770552
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-111 87 0.67 3634098719746764361
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-112 87 0.67 4314487338811052968
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-113 87 0.67 5876793050099133740
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-114 87 0.67 -5235994332925858849
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-115 87 0.67 291838429583798824
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-116 87 0.67 -7851855234979721359
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-117 87 0.67 4089799092780693955
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-118 87 0.67 -6972965992398481102
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-119 87 0.67 -7898136651855765677
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-120 87 0.67 7289605326798689553
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-121 87 0.67 -5791539722496683105
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-122 87 0.67 4335819381074350424
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-123 87 0.67 -7085981286997370426
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-124 87 0.67 3955441343318999089
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-125 87 0.67 1155971564682210911
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-126 87 0.67 -5283655728522564245
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-127 87 0.67 -2283270262670394143
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-128 87 0.67 -6928468616099001218
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-129 87 0.67 -6511461597979523259
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-130 87 0.67 1502532496001262284
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-131 87 0.67 1074415840366863337
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-132 87 0.67 -2190804552224304599
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-133 87 0.67 7830400173163984311
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-134 87 0.67 5275275028767901597
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-135 87 0.67 5913919479638884998
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-136 87 0.67 4006736214070170216
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-137 87 0.67 -1641023020912112705
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-138 87 0.67 4862658567996041029
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-139 87 0.67 -161478453859726013
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-140 87 0.67 -2480733090052795405
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-141 87 0.67 -8890650887571224948
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-142 87 0.67 4359085629746358000
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-143 87 0.67 -6307934566207360494
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-144 87 0.67 6538630692256255879
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-145 87 0.67 -997001601042657553
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-146 87 0.67 -2648312136804173299
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-147 87 0.67 -3742799482293526331
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-148 87 0.67 1875223846055750758
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-149 87 0.67 6325380841804614111
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-150 87 0.67 -7007976694200490290
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-151 87 0.67 -3932710092811934826
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-152 87 0.67 -5183518286812476203
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-153 87 0.67 6487222399179880693
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-154 87 0.67 3260906530849594027
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-155 87 0.67 9151808498644223904
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-156 87 0.67 -5074525452120839523
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-157 87 0.67 -5295270170838390031
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-158 87 0.67 -4107746314906497313
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-159 87 0.67 -6773403272580590237
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-160 87 0.67 -8246013206970154100
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-161 87 0.67 -3829071504732111821
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-162 87 0.67 2267567583155404010
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-163 87 0.67 -5705709211161716412
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-164 87 0.67 -2863300870041872911
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-165 87 0.67 4728037921943496514
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-166 87 0.67 5615913640116167437
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-167 87 0.67 -6559645751426843638
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-168 87 0.67 355723892800433442
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-169 87 0.67 2432888166973318473
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-170 87 0.67 6537026732048111825
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-171 87 0.67 -9109211255924413598
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-172 87 0.67 420083396582833657
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-173 87 0.67 -6283802058876002667
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-174 87 0.67 3195929714469958528
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-175 87 0.67 8875801544192741981
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-176 87 0.67 -365132939323239597
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-177 87 0.67 -6164669659329189096
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-178 87 0.67 4379843470449310378
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-179 87 0.67 -4874283275832909331
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-180 87 0.67 3557425229310790288
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-181 87 0.67 -6011783383480376599
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-182 87 0.67 -8351253462258357086
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-183 87 0.67 -4999922583464367765
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-184 87 0.67 -8176475875884982250
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-185 87 0.67 -7440227071198675262
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-186 87 0.67 -4932631796132687105
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-187 87 0.67 -6527838223241658604
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-188 87 0.67 236987868631436238
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-189 87 0.67 -6296343743658407807
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-190 87 0.67 1780539923758999323
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-191 87 0.67 -5106345100295112569
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-192 87 0.67 1508274239936261541
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-193 87 0.67 2670679711029124007
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-194 87 0.67 -6467115490637724009
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-195 87 0.67 2790333802923799369
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-196 87 0.67 -2118410168734725619
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-197 87 0.67 -6081455125725366820
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-198 87 0.67 -2557313093905795115
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-199 87 0.67 -3463013535809458879
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-200 87 0.67 5722145515072067193
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-1 116 0.67 -1095881523149662359
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-2 116 0.67 -1022473660177121667
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-3 116 0.67 5740968332308589884
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-4 116 0.67 2489154303697540580
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-5 116 0.67 7019055956426781628
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-6 116 0.67 -620423214521630727
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-7 116 0.67 -6577712423845479574
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-8 116 0.67 -3112395776146101
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-9 116 0.67 -7517390434712899096
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-10 116 0.67 -201147951857731592
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-11 116 0.67 6693663205760723423
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-12 116 0.67 1551347420983924782
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-13 116 0.67 6116617671737277730
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-14 116 0.67 -4892973738798809873
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-15 116 0.67 5584309056739028243
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-16 116 0.67 4162710841984107795
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-17 116 0.67 -7845145154650364603
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-18 116 0.67 -362076968287726445
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-19 116 0.67 -4800041200231922590
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-20 116 0.67 174364795637588483
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-21 116 0.67 5620494437518544719
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-22 116 0.67 81242667063384160
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-23 116 0.67 7223075365965542029
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-24 116 0.67 761790056060653836
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-25 116 0.67 -3134627052566628894
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-26 116 0.67 -1387811644490831339
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-27 116 0.67 -3905717001288890824
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-28 116 0.67 4116915202205482173
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-29 116 0.67 -3353032449386563132
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-30 116 0.67 -5606076978775525322
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-31 116 0.67 6851157504012726890
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-32 116 0.67 6467702004191585452
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-33 116 0.67 -4949944715131846049
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-34 116 0.67 -2459628627933654391
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-35 116 0.67 2515942549593143055
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-36 116 0.67 -4353911308198659596
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-37 116 0.67 491505906345897537
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-38 116 0.67 -1203659308057866599
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-39 116 0.67 -4445843415105349255
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-40 116 0.67 1899305750974188463
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-41 116 0.67 5505576255351722909
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-42 116 0.67 5343519981812792374
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-43 116 0.67 -1414601920683692837
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-44 116 0.67 8063714909190554497
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-45 116 0.67 -8506830083779161911
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-46 116 0.67 5064635156269869555
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-47 116 0.67 73594762095143629
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-48 116 0.67 3231583067762405901
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-49 116 0.67 -3521908256045667138
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-50 116 0.67 -2475419954956650073
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-51 116 0.67 6378585050033429451
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-52 116 0.67 3539133516625144701
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-53 116 0.67 -1365500347415885925
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-54 116 0.67 -3160959403167972115
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-55 116 0.67 2417749799140659126
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-56 116 0.67 -8231423776951766018
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-57 116 0.67 3843692294568516387
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-58 116 0.67 -398533647787470428
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-59 116 0.67 4221008398670947921
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-60 116 0.67 1365747858503253057
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-61 116 0.67 -1144450215180776646
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-62 116 0.67 6533569848928917103
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-63 116 0.67 8826490056599562181
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-64 116 0.67 -5895687693041308164
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-65 116 0.67 -898487940010686869
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-66 116 0.67 -5635054337703538891
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-67 116 0.67 -7789861446533059299
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-68 116 0.67 4479959155257608295
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-69 116 0.67 -5564329253558520219
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-70 116 0.67 -7496340558213996126
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-71 116 0.67 2125530161677736139
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-72 116 0.67 1366735224312859840
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-73 116 0.67 3296028531167707257
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-74 116 0.67 2080374965547618725
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-75 116 0.67 5870976387197968161
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-76 116 0.67 -3884216328955938105
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-77 116 0.67 7325535093026510366
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-78 116 0.67 7800498503688521200
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-79 116 0.67 -4267440154002284839
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-80 116 0.67 -7499581436747522750
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-81 116 0.67 6812826173350024558
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-82 116 0.67 4834493268890836091
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-83 116 0.67 -5858194643839874674
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-84 116 0.67 6378979917306406522
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-85 116 0.67 4624755071629818278
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-86 116 0.67 -7245682589050646782
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-87 116 0.67 6361014517211962433
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-88 116 0.67 -885874657731994435
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-89 116 0.67 -2526453729142334550
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-90 116 0.67 -417294058111735934
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-91 116 0.67 -992331083179890732
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-92 116 0.67 -5118217766081128742
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-93 116 0.67 -4626947733759638914
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-94 116 0.67 3980124281865995456
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-95 116 0.67 6886615438538697106
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-96 116 0.67 6457013973777500328
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-97 116 0.67 -1860938564660591666
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-98 116 0.67 7895384425646403266
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-99 116 0.67 8799641296917410725
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-100 116 0.67 1167297673848577919
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-101 116 0.67 8479048246123852903
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-102 116 0.67 -89391555408626861
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-103 116 0.67 -759530518690290273
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-104 116 0.67 6207810028992966332
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-105 116 0.67 1194855371393624251
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-106 116 0.67 4140599093477900931
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-107 116 0.67 5487778076838671602
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-108 116 0.67 4693385267439627330
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-109 116 0.67 -1736175763218512542
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-110 116 0.67 4673070898817491749
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-111 116 0.67 1316067026049320312
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-112 116 0.67 4864115121104256244
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-113 116 0.67 5498923641467199380
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-114 116 0.67 5153549773548279632
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-115 116 0.67 -6962443728586927637
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-116 116 0.67 -7778065247087341252
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-117 116 0.67 5409245207502286255
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-118 116 0.67 999401896728025311
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-119 116 0.67 4743619858081817710
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-120 116 0.67 -955104765494603385
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-121 116 0.67 -2950684179672725577
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-122 116 0.67 -2794421521109494287
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-123 116 0.67 1425484299439824642
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-124 116 0.67 -2798614802919236921
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-125 116 0.67 1822269975356913617
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-126 116 0.67 -4172287854369442455
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-127 116 0.67 1890354765642273810
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-128 116 0.67 7417853120652724976
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-129 116 0.67 -4058713565712770361
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-130 116 0.67 7886633239702530927
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-131 116 0.67 -8265727961178886424
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-132 116 0.67 -8977525865656967813
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-133 116 0.67 -3763712330407047033
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-134 116 0.67 5889635310267686381
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-135 116 0.67 589624097159212085
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-136 116 0.67 -4679341794497128475
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-137 116 0.67 1647803010710961316
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-138 116 0.67 7937439484874021138
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-139 116 0.67 -1811993189419933043
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-140 116 0.67 8700984007704938033
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-141 116 0.67 4304770905912350419
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-142 116 0.67 -8109833300445015085
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-143 116 0.67 5053612598913735400
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-144 116 0.67 -6074704478123030686
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-145 116 0.67 5310238939657325424
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-146 116 0.67 -3237891855726918555
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-147 116 0.67 -950760364943935197
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-148 116 0.67 -7737520913872033278
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-149 116 0.67 8063056086300437495
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-150 116 0.67 -4140482180864621372
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-151 116 0.67 1376338163628979325
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-152 116 0.67 983462239026747551
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-153 116 0.67 2530091700350185354
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-154 116 0.67 2774297096570619696
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-155 116 0.67 9035752326724919322
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-156 116 0.67 1860588635584271944
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-157 116 0.67 -2647740724633271438
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-158 116 0.67 2998389619567975083
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-159 116 0.67 9092074252409144196
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-160 116 0.67 -7327610717683283180
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-161 116 0.67 104485567911832470
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-162 116 0.67 -7403854335415353476
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-163 116 0.67 5082746243605873444
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-164 116 0.67 -8020703592167022437
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-165 116 0.67 5943581227649512197
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-166 116 0.67 -5266298964227257426
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-167 116 0.67 6611590585395943629
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-168 116 0.67 -6709473958103060869
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-169 116 0.67 -3686840408993813389
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-170 116 0.67 1335537094035611538
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-171 116 0.67 2864154447940541490
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-172 116 0.67 -3558395068327807276
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-173 116 0.67 4372708887169122995
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-174 116 0.67 230708740655000120
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-175 116 0.67 4138896820743232363
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-176 116 0.67 6590259680669971148
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-177 116 0.67 -7236695981608036030
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-178 116 0.67 7568934861723827706
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-179 116 0.67 -2644089339430452363
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-180 116 0.67 2585383124782919437
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-181 116 0.67 -4278947104362873668
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-182 116 0.67 -4887371724231641870
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-183 116 0.67 7327281466952423598
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-184 116 0.67 4528151943163623490
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-185 116 0.67 8176574110713553764
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-186 116 0.67 3605928372708681087
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-187 116 0.67 1844528324477337437
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-188 116 0.67 -1382743797284300899
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-189 116 0.67 1109459642318732705
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-190 116 0.67 -1187357427380017468
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-191 116 0.67 6926750244739945512
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-192 116 0.67 7804165894835035988
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-193 116 0.67 -4672680151803586949
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-194 116 0.67 -3199709403720882903
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-195 116 0.67 120915571775902875
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-196 116 0.67 237552420106536735
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-197 116 0.67 -4783395787049597918
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-198 116 0.67 7171851293633611480
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-199 116 0.67 5159445244480100264
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/swarmops.jar Stairway_fold_training_testing7 Mex2/input/Mex.NEW-200 116 0.67 2025135762695624892
date
# Step 2: determine number of break points
mv -f Mex2/input/Mex.NEW-1.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-2.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-3.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-4.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-5.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-6.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-7.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-8.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-9.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-10.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-11.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-12.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-13.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-14.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-15.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-16.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-17.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-18.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-19.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-20.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-21.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-22.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-23.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-24.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-25.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-26.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-27.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-28.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-29.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-30.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-31.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-32.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-33.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-34.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-35.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-36.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-37.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-38.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-39.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-40.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-41.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-42.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-43.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-44.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-45.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-46.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-47.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-48.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-49.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-50.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-51.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-52.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-53.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-54.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-55.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-56.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-57.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-58.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-59.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-60.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-61.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-62.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-63.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-64.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-65.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-66.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-67.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-68.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-69.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-70.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-71.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-72.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-73.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-74.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-75.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-76.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-77.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-78.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-79.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-80.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-81.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-82.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-83.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-84.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-85.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-86.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-87.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-88.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-89.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-90.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-91.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-92.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-93.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-94.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-95.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-96.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-97.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-98.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-99.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-100.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-101.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-102.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-103.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-104.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-105.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-106.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-107.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-108.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-109.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-110.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-111.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-112.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-113.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-114.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-115.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-116.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-117.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-118.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-119.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-120.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-121.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-122.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-123.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-124.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-125.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-126.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-127.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-128.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-129.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-130.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-131.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-132.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-133.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-134.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-135.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-136.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-137.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-138.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-139.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-140.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-141.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-142.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-143.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-144.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-145.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-146.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-147.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-148.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-149.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-150.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-151.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-152.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-153.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-154.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-155.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-156.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-157.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-158.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-159.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-160.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-161.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-162.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-163.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-164.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-165.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-166.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-167.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-168.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-169.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-170.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-171.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-172.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-173.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-174.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-175.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-176.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-177.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-178.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-179.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-180.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-181.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-182.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-183.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-184.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-185.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-186.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-187.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-188.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-189.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-190.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-191.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-192.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-193.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-194.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-195.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-196.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-197.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-198.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-199.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-200.29_0.67.addTheta Mex2/rand29/
mv -f Mex2/input/Mex.NEW-1.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-2.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-3.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-4.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-5.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-6.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-7.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-8.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-9.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-10.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-11.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-12.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-13.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-14.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-15.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-16.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-17.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-18.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-19.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-20.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-21.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-22.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-23.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-24.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-25.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-26.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-27.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-28.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-29.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-30.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-31.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-32.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-33.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-34.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-35.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-36.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-37.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-38.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-39.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-40.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-41.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-42.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-43.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-44.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-45.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-46.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-47.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-48.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-49.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-50.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-51.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-52.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-53.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-54.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-55.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-56.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-57.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-58.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-59.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-60.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-61.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-62.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-63.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-64.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-65.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-66.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-67.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-68.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-69.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-70.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-71.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-72.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-73.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-74.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-75.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-76.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-77.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-78.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-79.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-80.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-81.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-82.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-83.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-84.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-85.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-86.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-87.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-88.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-89.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-90.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-91.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-92.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-93.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-94.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-95.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-96.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-97.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-98.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-99.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-100.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-101.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-102.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-103.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-104.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-105.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-106.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-107.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-108.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-109.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-110.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-111.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-112.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-113.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-114.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-115.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-116.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-117.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-118.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-119.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-120.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-121.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-122.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-123.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-124.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-125.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-126.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-127.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-128.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-129.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-130.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-131.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-132.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-133.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-134.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-135.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-136.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-137.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-138.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-139.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-140.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-141.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-142.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-143.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-144.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-145.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-146.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-147.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-148.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-149.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-150.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-151.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-152.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-153.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-154.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-155.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-156.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-157.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-158.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-159.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-160.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-161.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-162.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-163.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-164.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-165.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-166.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-167.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-168.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-169.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-170.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-171.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-172.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-173.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-174.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-175.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-176.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-177.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-178.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-179.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-180.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-181.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-182.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-183.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-184.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-185.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-186.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-187.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-188.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-189.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-190.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-191.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-192.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-193.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-194.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-195.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-196.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-197.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-198.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-199.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-200.58_0.67.addTheta Mex2/rand58/
mv -f Mex2/input/Mex.NEW-1.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-2.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-3.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-4.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-5.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-6.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-7.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-8.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-9.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-10.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-11.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-12.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-13.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-14.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-15.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-16.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-17.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-18.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-19.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-20.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-21.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-22.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-23.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-24.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-25.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-26.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-27.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-28.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-29.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-30.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-31.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-32.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-33.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-34.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-35.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-36.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-37.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-38.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-39.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-40.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-41.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-42.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-43.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-44.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-45.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-46.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-47.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-48.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-49.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-50.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-51.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-52.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-53.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-54.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-55.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-56.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-57.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-58.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-59.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-60.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-61.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-62.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-63.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-64.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-65.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-66.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-67.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-68.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-69.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-70.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-71.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-72.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-73.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-74.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-75.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-76.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-77.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-78.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-79.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-80.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-81.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-82.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-83.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-84.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-85.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-86.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-87.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-88.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-89.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-90.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-91.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-92.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-93.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-94.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-95.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-96.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-97.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-98.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-99.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-100.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-101.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-102.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-103.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-104.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-105.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-106.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-107.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-108.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-109.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-110.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-111.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-112.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-113.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-114.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-115.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-116.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-117.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-118.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-119.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-120.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-121.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-122.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-123.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-124.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-125.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-126.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-127.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-128.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-129.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-130.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-131.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-132.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-133.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-134.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-135.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-136.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-137.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-138.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-139.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-140.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-141.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-142.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-143.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-144.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-145.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-146.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-147.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-148.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-149.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-150.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-151.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-152.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-153.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-154.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-155.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-156.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-157.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-158.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-159.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-160.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-161.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-162.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-163.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-164.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-165.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-166.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-167.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-168.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-169.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-170.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-171.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-172.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-173.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-174.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-175.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-176.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-177.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-178.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-179.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-180.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-181.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-182.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-183.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-184.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-185.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-186.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-187.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-188.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-189.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-190.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-191.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-192.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-193.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-194.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-195.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-196.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-197.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-198.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-199.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-200.87_0.67.addTheta Mex2/rand87/
mv -f Mex2/input/Mex.NEW-1.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-2.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-3.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-4.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-5.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-6.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-7.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-8.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-9.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-10.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-11.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-12.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-13.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-14.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-15.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-16.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-17.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-18.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-19.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-20.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-21.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-22.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-23.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-24.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-25.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-26.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-27.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-28.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-29.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-30.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-31.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-32.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-33.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-34.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-35.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-36.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-37.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-38.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-39.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-40.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-41.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-42.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-43.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-44.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-45.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-46.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-47.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-48.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-49.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-50.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-51.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-52.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-53.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-54.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-55.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-56.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-57.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-58.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-59.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-60.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-61.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-62.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-63.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-64.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-65.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-66.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-67.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-68.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-69.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-70.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-71.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-72.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-73.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-74.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-75.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-76.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-77.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-78.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-79.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-80.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-81.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-82.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-83.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-84.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-85.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-86.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-87.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-88.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-89.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-90.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-91.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-92.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-93.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-94.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-95.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-96.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-97.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-98.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-99.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-100.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-101.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-102.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-103.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-104.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-105.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-106.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-107.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-108.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-109.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-110.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-111.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-112.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-113.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-114.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-115.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-116.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-117.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-118.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-119.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-120.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-121.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-122.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-123.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-124.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-125.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-126.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-127.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-128.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-129.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-130.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-131.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-132.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-133.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-134.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-135.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-136.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-137.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-138.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-139.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-140.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-141.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-142.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-143.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-144.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-145.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-146.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-147.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-148.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-149.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-150.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-151.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-152.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-153.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-154.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-155.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-156.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-157.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-158.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-159.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-160.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-161.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-162.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-163.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-164.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-165.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-166.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-167.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-168.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-169.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-170.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-171.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-172.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-173.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-174.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-175.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-176.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-177.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-178.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-179.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-180.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-181.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-182.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-183.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-184.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-185.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-186.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-187.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-188.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-189.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-190.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-191.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-192.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-193.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-194.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-195.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-196.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-197.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-198.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-199.116_0.67.addTheta Mex2/rand116/
mv -f Mex2/input/Mex.NEW-200.116_0.67.addTheta Mex2/rand116/
java -Xmx1g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/ Stairpainter Mex.NEW_blueprint.txt
bash Mex.NEW_blueprint.txt.plot.sh
date

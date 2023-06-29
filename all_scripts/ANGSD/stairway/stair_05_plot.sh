#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J stair_plot
#SBATCH -p RM-shared
#SBATCH -t 48:00:00
#SBATCH --ntasks-per-node=4
set -e
set -x
# To Run
# sbatch stair_05_plot.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork/stairway

#copy and paste the output of stair_04_run below (should have suffix _blueprint.txt.plot.sh)

cp -f Mex2/rand116/Mex.NEW-1.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-2.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-3.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-4.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-5.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-6.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-7.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-8.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-9.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-10.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-11.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-12.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-13.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-14.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-15.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-16.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-17.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-18.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-19.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-20.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-21.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-22.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-23.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-24.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-25.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-26.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-27.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-28.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-29.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-30.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-31.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-32.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-33.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-34.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-35.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-36.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-37.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-38.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-39.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-40.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-41.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-42.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-43.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-44.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-45.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-46.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-47.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-48.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-49.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-50.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-51.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-52.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-53.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-54.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-55.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-56.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-57.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-58.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-59.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-60.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-61.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-62.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-63.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-64.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-65.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-66.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-67.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-68.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-69.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-70.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-71.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-72.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-73.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-74.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-75.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-76.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-77.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-78.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-79.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-80.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-81.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-82.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-83.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-84.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-85.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-86.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-87.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-88.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-89.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-90.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-91.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-92.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-93.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-94.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-95.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-96.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-97.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-98.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-99.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-100.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-101.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-102.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-103.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-104.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-105.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-106.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-107.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-108.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-109.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-110.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-111.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-112.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-113.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-114.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-115.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-116.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-117.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-118.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-119.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-120.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-121.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-122.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-123.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-124.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-125.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-126.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-127.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-128.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-129.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-130.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-131.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-132.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-133.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-134.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-135.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-136.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-137.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-138.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-139.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-140.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-141.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-142.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-143.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-144.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-145.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-146.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-147.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-148.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-149.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-150.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-151.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-152.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-153.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-154.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-155.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-156.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-157.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-158.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-159.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-160.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-161.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-162.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-163.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-164.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-165.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-166.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-167.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-168.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-169.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-170.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-171.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-172.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-173.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-174.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-175.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-176.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-177.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-178.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-179.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-180.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-181.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-182.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-183.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-184.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-185.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-186.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-187.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-188.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-189.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-190.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-191.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-192.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-193.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-194.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-195.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-196.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-197.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-198.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-199.116_0.67.addTheta Mex2/final/
cp -f Mex2/rand116/Mex.NEW-200.116_0.67.addTheta Mex2/final/
# Step 2: create summaries and plots
java -Xmx4g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/gral-core-0.11.jar:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/VectorGraphics2D-0.9.3.jar Stairway_output_summary_plot2 Mex.NEW_blueprint.txt
java -Xmx4g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/gral-core-0.11.jar:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/VectorGraphics2D-0.9.3.jar Stairway_output_summary_plot2 Mex.NEW_blueprint.txt rand29
java -Xmx4g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/gral-core-0.11.jar:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/VectorGraphics2D-0.9.3.jar Stairway_output_summary_plot2 Mex.NEW_blueprint.txt rand58
java -Xmx4g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/gral-core-0.11.jar:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/VectorGraphics2D-0.9.3.jar Stairway_output_summary_plot2 Mex.NEW_blueprint.txt rand87
java -Xmx4g -cp /ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/gral-core-0.11.jar:/ocean/projects/deb200006p/enielsen/LGwork/stairway/stairway_plot_v2.1.1/stairway_plot_es/VectorGraphics2D-0.9.3.jar Stairway_output_summary_plot2 Mex.NEW_blueprint.txt rand116

# Lottia_range_expansion
Pipeline used to analyze Lottia gigantea whole genome sequencing data, for publication titled "Pushed waves, trailing edges, and extreme events: Eco-evolutionary dynamics of a geographic range shift in the owl limpet, Lottia gigantea". Corresponding miro board of full pipeline can be found here: https://miro.com/welcomeonboard/THE0eXpPUXMxcVFnNHd6OENtYXdMZk1NRTd6SEFzbHdFZTl2a25OSHh6TmQ1OFF5NFcyQU9lUkpRck96YlZObXwzNDU4NzY0NTI0MDc1NzU3Mjc0fDI=?share_link_id=714947409411

## Part 1 - Download data and call single nucleotide polymorphisms
Download raw fastq reads from NCBI, under the BioProject accession number: PRJNA1075458. This contains low coverage whole genome sequencing data for 19 populations, with roughly 30 individuals sampled per population. Upload these raw reads into a directory titled "rawdata/fastqs". 

Download the Lottia gigantea reference sequence using NCBI RefSeq assembly code: GCF_000327385.1. Put in a directory called "03_genome".

Now go into directory in this github repository called 'Lottia_range_expansion/all_scripts'. Run the following bash scripts within this directory in this order (all of the outputs should feed as input files for the following step):

*fastQC.sh* - Will run the program fastQC to give quality reports on raw reads.. this is done per individual fastq files

*multiqc.sh* - Will perform similar quality control analysis as fastQC.sh, but for all raw reads at once

*01_fastp.sh* - Will run the program fastp to do quality and adapter trimming

*02_bwa_map.sh* - Use BWA-MEM to index the reference sequence, map reads onto reference genome. Then use samtools to sort and index bam files. 

*03_remove_duplicates.sh* - Use picard to mark and remove duplicate reads. 

*04_clip_index.sh* - Soft-clip overlapping reads with the clipOverlap function bamUtils 

*05.A_realign_targets.sh* - Realign insertions/deletions with GATK v3 RealignerTargetCreator: step 1 of indexing

*05.B_realign_indels.sh* - Realign insertions/deletions with GATK v3 RealignerTargetCreator: step 2 or realigning

*06_dictionary_ref.sh* - Index the reference genome for SNP calling

## Part 2 - Call SNPs and calculate genomic variation with ANGSD 
Now go into this directory within github: Lottia_range_expansion/all_scripts/ANGSD/

*A_01.A_config.sh* - This is your configuration file, the parameters will feed into other bash scripts we will use later on. Can alter SNP calling filters. 

Now run the following scripts in this order:

### Call SNPs
*A_01.B_bamlist.sh* - Creates the bamfile list input file for ANGSD. 

*A_01.C_info_txt.sh* - This script will make the info.txt file for PCAs later on

*A_02.A_gl_all.sh* - Perform initial SNP calling on all samples

*A_02.B_get_sites.sh* - Get site list of chromosome and positions of SNPs identified in previous script

*A_02.C_min_ind_per_pop.sh* - This will output the minimum number of individuals for SNP to be found in each population to pass SNP calling filters

### Population Structure
*A_03.A_pcangsd_all.sh* - Run pcangsd to generate PCA values from SNPs (for population strcuture)

*A_03.B_pcangsd_vis.sh* - Plot the output of the PCA (you can find the associated R scripts in the github directory: Lottia_range_expansion/all_scripts/ANGSD/Rscripts

*A_04.A_admix_all.sh* - Created structure plots using NGSadmix, testing clusters (K) 1-10

*A_04.B_admix_all.sh* - Second step of NGSadmix, output the log file for plotting in R

Go into Lottia_range_expansion/all_scripts/ANGSD/Rscripts and run '*k.plot.admix.R*' - Will plot outputs from the log files of NGSadmix

### Prune SNPs in linkage disequlibrium
Back into ANGSD directory.. *A_05_gl_for_plink.sh* - Call SNPs again with ANGSD, but now output as plink file to do linkage disequlibrium filtering

*A_06_plink_R2_prune.sh* - Use plink to remove SNPs that are in linkage disequilibrium (LD)

*A_07_gl_prune.sh* - Call SNPs again with ANGSD after LD pruning

### Population strcuture on final SNP dataset
*A_08_pcangsd_prune.sh* - Create PCA on LD-pruned SNPs

*A_09_admix_prune.sh* - NGS admix structure plots on LD-pruned SNPs

### Inbreeding coefficients
*A_10_gl_for_ngsF_.sh* - Call SNPs again with ANGSD, now with output for ngsF

*A_11_ngsF_inbred.sh* - Calculate inbreeding coefficients with ngsF

### Population differentiation (FSTs)
*A_12_saf_maf_pop.sh* - Calculate allele frequencies per population 

*A_13A_fst_pop.sh* - First script in calculating per-site Fsts (make site frequency spectrums, sfs)

*A_13B_fst_pop_R.sh* - Second step in calculating per-site Fsts (create script to do pairwise comparisons)

*A_13C_fst_pop.sh* - Final step in calculating per-site Fsts (acutally calculate for each pairwise comparison)

### Genetic diversity (theta, pi, D)
*A_14A_thetas.sh* - First step in calculating Watterson's theta (create sfs)

*A_14B_thetas_R.sh* - Second step in calculating Watterson's theta (R script to help us summarise the output)

*A_14C_thetas.sh* - Final step in calculating Watterson's theta (calculate theta with ANGSD per population)

### Genetic diversity (expected heterozygosity)
Go into Rscripts directory and run *pop.het.R* - Will take the beagle output from ANGSD (same used to run PCA) and calculate per-site He values

### Isolation by distance
Go into Rscripts directory and run *ibe.ibd.R* - Will run IBD analyses (geo dist and fst dist matrices are in this directory)

### Genetic load (θN/θS)
*A_21_vep_vcf.sh* - Run ANGSD again and get vcf output (which is input for ensembl’s variant effect predictor, VEP)

Go into github repo directory titled "genetic_load" (From ANGSD directory) and run scripts in this order:

*01_edit.gff.sh* - Edit the reference genome .gff file coding

*02.A_sort.1.gff.sh* - Sort the genome part 1

*02.B_sort.2.gff.sh* - Part 2 of processing the .gff genome file

*03_ensem_vep.sh* - Run ensembl’s variant effect predictor

*04_filt_vep_out.sh* - Edit the output files

Then run the following scripts to generate theta for synonymous and missense SNPs from VEP:

*05_miss.syn1_angsd.sh*

*05_miss.syn2_sfs.sh*

*05_miss.syn3_theta.sh*


### Minor Allele in Highest Frequency
Go back into Lottia_range_expansion/all_scripts/ANGSD/Rscripts directory and run:

*MAHF.R* - will calculate MAHF values per population

### Gene flow with FEEMS
Go into the directory: Lottia_range_expansion/all_scripts/ANGSD/migration_analyses/FEEMS/ & run the following:
*feems.grid.R* - create the spatial grid for FEEMs to run on (using the shapefile within the directory)

*feems_1.sh* - Run feems analysis (using python script: feems_run.py)

*feems_2.sh* - Run cross validation of feems analysis (using python script: feems_cv.py)

### GRRF Population Assignment
Go into the directory: Lottia_range_expansion/all_scripts/ANGSD/pop_assignment/  & run the following:

*GRRF.plink.recode.sh* - Recode the plink output from ANGSD to create input file for GRRF

*grrf_R.sh* - Run GRRF R script, which will identify SNPs delineating source populations and use them to assign unknown individuals to those source populations

*GRRF.assign.plot.R* - Plot the results from the GRRF models

### Opendrift larval simulation models
Go into the directory: Lottia_range_expansion/all_scripts/opendrift & run the following: 

(will need to download environmental data from Copernicus: https://data.marine.copernicus.eu/products - too large to store here)

*opdrift.sh* - Runs the opendrift (note there's separate scripts for northern or southern seeded sites - I was too lazy to write a script to loop through the sites so I edited them manually)

*opdrift.plot.R* - Plot opendrift results

### Moments demographic models

Go into the directory: Lottia_range_expansion/all_scripts/ANGSD/AFS_Moments/

Run the scripts in the following order: *M1_create_sfs1.sh* -> *M2_create_sfs2.sh* -> *M3_create_boot.sh* -> *M4_run_boot.sh* -> *M5_bagging.sh* -> *M6_modsel_write.sh* -> *M7_run_models.sh* -> *M8_mod_summ.sh* -> *M9_best_mod_boot.sh* -> *M10_best_mod_summ.sh* 

Then run this script to get summary of best model: *bestBoot_summary.EN.2.R*

Note that I ran all  the above code separately for the 2 comparisons (Baja vs. South & Central vs. North)

### Stairway
Go into the directory: Lottia_range_expansion/all_scripts/ANGSD/stairway & run the following: 

*stair_01_sfs.sh* - Create dadi input files from SFS

*stair_02_1dSFS.R* - Take the .dat file from stair_01_sfs.sh and calculated the 1-pop SFS from it

*stair_03_build_BP.sh* - Build the blueprint files per population

*stair_04_run.sh* - Run stairway analysis

*stair_05_plot.sh* - Create output files to plot

*stair_06_plot.R* - Plot output files


### LD decay
Go into the directory: Lottia_range_expansion/all_scripts/ANGSD/LD & run the following: 

*ld_decay_py.sh* - calculate LD decay with ld_decay_calc.py python script

*ld_decay_plot.R* - To plot LD decay from plink and M. Ravinet python scripts

### SDMs

Run the R script in the directory: all_scripts/SDMs/LG.sdms.R 













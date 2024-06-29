### Lottia_range_expansion
Pipeline used to analyze Lottia gigantea whole genome sequencing data, for publication titled "Pushed waves, trailing edges, and extreme events: Eco-evolutionary dynamics of a geographic range shift in the owl limpet, Lottia gigantea". Corresponding miro board of full pipeline can be found here: https://miro.com/welcomeonboard/THE0eXpPUXMxcVFnNHd6OENtYXdMZk1NRTd6SEFzbHdFZTl2a25OSHh6TmQ1OFF5NFcyQU9lUkpRck96YlZObXwzNDU4NzY0NTI0MDc1NzU3Mjc0fDI=?share_link_id=714947409411

## Part 1 - Download data and call single nucleotide polymorphisms
Download raw fastq reads from NCBI, under the BioProject accession number: PRJNA1075458. This contains low coverage whole genome sequencing data for 19 populations, with roughly 30 individuals sampled per population. Upload these raw reads into a directory titled "rawdata/fastqs". 

Download the Lottia gigantea reference sequence using NCBI RefSeq assembly code: GCF_000327385.1. Put in a directory called "03_genome".

Next, go into the directory in this repository called 'all_scripts'. Run the following bash scripts within this directory in this order (all of the outputs should feed as input files for the following step):

fastQC.sh - Will run the program fastQC to give quality reports on raw reads.. this is done per individual fastq files
multiqc.sh - Will perform similar quality control analysis as fastQC.sh, but for all raw reads at once
01_fastp.sh - Will run the program fastp to do quality and adapter trimming
02_bwa_map.sh - Use BWA-MEM to index the reference sequence, map reads onto reference genome. Then use samtools to sort and index bam files. 
03_remove_duplicates.sh - Use picard to mark and remove duplicate reads. 
04_clip_index.sh - Soft-clip overlapping reads with the clipOverlap function bamUtils 
05.A_realign_targets.sh - Realign insertions/deletions with GATK v3 RealignerTargetCreator: step 1 of indexing
05.B_realign_indels.sh - Realign insertions/deletions with GATK v3 RealignerTargetCreator: step 2 or realigning
06_dictionary_ref.sh - Index the reference genome for SNP calling

## Part 2 - Call SNPs and calculate genomic variation with ANGSD 
Now go into this directory within github: Lottia_range_expansion/all_scripts/ANGSD/

A_01.A_config.sh - This is your configuration file, the parameters will feed into other bash scripts we will use later on. Can alter SNP calling filters. 

Now run the following scripts in this order:

# Call SNPs
A_01.B_bamlist.sh - Creates the bamfile list input file for ANGSD. 
A_01.C_info_txt.sh - This script will make the info.txt file for PCAs later on
A_02.A_gl_all.sh - Perform initial SNP calling on all samples
A_02.B_get_sites.sh - Get site list of chromosome and positions of SNPs identified in previous script
A_02.C_min_ind_per_pop.sh - This will output the minimum number of individuals for SNP to be found in each population to pass SNP calling filters
# Population Structure
A_03.A_pcangsd_all.sh - Run pcangsd to generate PCA values from SNPs (for population strcuture)
A_03.B_pcangsd_vis.sh - Plot the output of the PCA (you can find the associated R scripts in the github directory: Lottia_range_expansion/all_scripts/ANGSD/Rscripts
A_04.A_admix_all.sh - Created structure plots using NGSadmix, testing clusters (K) 1-10
A_04.B_admix_all.sh - Second step of NGSadmix, output the log file for plotting in R
Go into ANGSD/Rscripts and run 'k.plot.admix.R' - Will plot outputs from the log files of NGSadmix
# Prune SNPs in linkage disequlibrium
Back into ANGSD directory.. A_05_gl_for_plink.sh - Call SNPs again with ANGSD, but now output as plink file to do linkage disequlibrium filtering
A_06_plink_R2_prune.sh - Use plink to remove SNPs that are in linkage disequilibrium (LD)
A_07_gl_prune.sh - Call SNPs again with ANGSD after LD pruning
# Population strcuture on final SNP dataset
A_08_pcangsd_prune.sh - Create PCA on LD-pruned SNPs
A_09_admix_prune.sh - NGS admix structure plots on LD-pruned SNPs
# Inbreeding coefficients
A_10_gl_for_ngsF_.sh - Call SNPs again with ANGSD, now with output for ngsF
A_11_ngsF_inbred.sh - Calculate inbreeding coefficients with ngsF
# Population differentiation (FSTs)
A_12_saf_maf_pop.sh - Calculate allele frequencies per population 
A_13A_fst_pop.sh - First script in calculating per-site Fsts (make site frequency spectrums)
A_13B_fst_pop_R.sh - Second step in calculating per-site Fsts (create script to do pairwise comparisons)
A_13C_fst_pop.sh - Final step in calculating per-site Fsts (acutally calculate for each pairwise comparison)
# Genetic diversity (theta)
A_14A_thetas.sh - First step in calculating Watterson's theta (create sfs)
A_14B_thetas_R.sh - Second step in calculating Watterson's theta (R script to help us summarise the output)
A_14C_thetas.sh - Final step in calculating Watterson's theta (calculate theta with ANGSD per population)











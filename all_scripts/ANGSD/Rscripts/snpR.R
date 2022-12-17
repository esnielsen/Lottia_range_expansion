###### Characterize population differentiation with snpR ######
######                                                   ######

setwd("~/Desktop/PD_stuffies/demoography/min.span.net")

library(snpR)
library(R.filesets)
library(ggplot2)
library(ggtree)

#to create this geno.txt file I took the .geno file from angsd, input it into excel 
#and added column titles which relate to the individ IDs
geno <- read.table("ALL_2_R2.geno.txt", header = TRUE)

sites <- read.table("sites_ALL_2_R2.pruned.neut.txt", header = F)
colnames(sites)[1] <- "chr"
colnames(sites)[2] <- "position"

filt.geno<-dplyr::left_join(geno, sites, by=c("chr", "position")) %>% na.omit()

NN <- filt.geno[,1:555]


# the first 2 characters of the column names are the population, so let's grab that.
# since the first three columns contain snp.metadata, we need to remove those before import!
sample_meta <- data.frame(pop = substr(colnames(NN[-c(1:2)]), 1, 2), stringsAsFactors = F)

# grab our sample metadata
snp_meta <- NN[,1:2]
# grab the genetic data
gen_data <- NN[,3:ncol(NN)]
# import, remember to remove metadata from the genotypes!
my.dat <- import.snpR.data(genotypes = gen_data, 
                           snp.meta = snp_meta, 
                           mDat = "-1",
                           sample.meta = sample_meta)
# get the number of samples
nsamps(my.dat)
ncol(my.dat)
# get the number of SNPs
nsnps(my.dat)
nrow(my.dat)
# dim also works
dim(my.dat)
# view sample metadata
head(sample.meta(my.dat))
# write to sample metadata; note that writing to any part of the metadata or genotypes will cause any calculations
# to be discarded, since the new columns can cause some unexpected results.
sample.meta(my.dat)$fam <- sample(LETTERS[1:4], nsamps(my.dat), T)
# view snp metadata
head(snp.meta(my.dat))

#Almost all snpR functions are built to allow overwriting for easy object management. Since calculated data is stored in snpRdata objects, snpR functions generally return the snpRdata object that was given to them, but with extra data merged in. For example, to calculate observed heterozygosity, the calc_ho function can be used:

#edit my.dat snpR file to calculate Ho (this won't change df)
my.dat <- calc_ho(my.dat)

#Then get the actual values
ho <- get.snpR.stats(my.dat, stats = "ho")
head(ho$single)
head(ho$weighted.means)

#Facets are defined by reference to column names in either the snp or sample metadata that was provided when creating a snpRdata object. For example, the facet "pop" would split my.dat apart by the pop column in the sample metadata and run the requested function or calculation for each of the levels/subfacets within that facet (eg. the facet pop comprises 6 levels/subfacets - ASP, CLF, OPL, PAL, SMR, UPD). Whereas the facet "chr" would split my.dat apart by the "chr" column in the snp metadata (21 levels/subfacets) and run any specified calculation for each unique level/subfacet. 

#To calculate observed heterozygosity at each SNP within each population, for example, one can supply the "pop" facet.

my.dat <- calc_ho(my.dat, facets = "pop") #running the calculation
head(get.snpR.stats(my.dat, facets = "pop", stats = "ho")$weighted.means) #retrieving the results

#calculate clusters for pca
p <- plot_clusters(my.dat, facets = "pop")

#plot pca
p$plots$pca

#plot neighbor joining tree
tr <- calc_tree(
  my.dat,
  facets = c(".base", "pop"),
  distance_method = "Edwards",
  interpolate = "bernoulli",
  tree_method = "nj",
  root = FALSE,
  boot = FALSE,
  boot_par = FALSE,
  update_bib = FALSE
)

temp <- saveRDS(tr, "temp_tr.RDS")

#restart R, then

tr <-loadRDS("temp_tr.RDS")

#gives nice circle tree with all individs
ggtree(tr$.base$.base, layout="daylight")

#circle tree with pops
ggtree(tr$pop$.base, layout="daylight")+ geom_tiplab(aes(color=pop))+
  scale_color_manual(values=c(KR = "#E7B800",FR= "#FC4E07", BB = "darkgreen"))

#normal tree with pop labels
ggtree(tr$pop$.base)+ geom_tiplab(size=3, color="purple")

library(tidyverse)
#to get circle tree with individs colored by pop
x <- as_tibble(tr$pop$.base)

x2 <- transform(x, pop = substr(label,1,2))
x2$pop=factor(x2$pop, levels=c("KR","FR","BB","DB","HP","CR","SB","VN", "GP","CA","WA", "IP","SH","SC", "CB", "PB", "SR", "BT","BA"))

ALL.cols=c("#436EEE", "#6959CD","#009ACD","#B9D3EE","#40E0D0","#458B00","#66CD00", "#00FF00","#EEEE00","#FFFF00", "#FFD700","#FFA500", "#CD3700", "#FF1493","#FF83FA", "#8B1C62", "#CD6090", "#9F79EE", "#68228B")  

g <- ggtree(tr$pop$.base)

g %<+% x2 + geom_tippoint(aes(color=pop), size=2) + scale_color_manual(values=ALL.cols)+ geom_tiplab(offset = 0.005)

#g %<+% x2 +layout_dendrogram() + 
#  geom_tippoint(aes(fill=factor(pop), x=x), 
#        size=2, shape=21, color='black')+scale_color_manual(values=ALL.cols)

#y <- merge(x, x2)

#g <- ggtree(tr$pop$.base, layout="daylight")

###### Characterize population differentiation with snpR ######
######                                                   ######

setwd("~/Desktop/PD_stuffies/demoography/min.span.net")

library(snpR)
library(R.filesets)
library(ggplot2)
library(ggtree)
library(dplyr)

#to create this geno.txt file I took the .geno file from angsd, and added column titles which relate to the individ IDs
geno <- read.table("ALL_2_R2.geno.txt", header = TRUE)
geno.edit<-geno[ , !names(geno) %in% 
      c("IP29","IP32","IP31", "IP17", "IP30", "IP21", "IP15", "IP18", "IP22", "IP19", "IP20", "IP23")]

sites <- read.table("sites_ALL_2_maf0.05_pctind0.5_maxdepth15_R2.pruned.txt", header = F)
colnames(sites)[1] <- "chr"
colnames(sites)[2] <- "position"

filt.geno<-dplyr::left_join(geno.edit, sites, by=c("chr", "position")) %>% na.omit()

NN <- filt.geno[,1:543]


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


###### Get SFS from dadi file with snpR ######
######                                  ######
setwd("~/Desktop/PD_stuffies/R_work/snpR")
make_SFS("KR.FR_dadi.dat", "pop0", 60, fold = TRUE, update_bib = FALSE)

#this will tell you # of sites- KR=793116
5617 26639 48001 67282 71607 62140 56572 44383 36773 29602 38110  8783 37242 17918 11907 26225 19339  6443 16363 20632  5110 17800   305 47155    11 25702  6704 25624 13289  5455


make_SFS("KR.FR_dadi.dat", "pop1", 60, fold = TRUE, update_bib = FALSE)
#FR=806881 sites
 6183 24000 46915 64149 68128 62818 55864 46411 37450 35573 24006 32392 19057 25443 13613 24104 14675 13855 15194 19413  2787 30045  4492 15157 19819 15387 15186 34853 2835 23260

make_SFS("BB.DB_dadi.dat", "pop0", 60, fold = TRUE, update_bib = FALSE)
#BB 818955 sites
5672 24063 45943 64270 68143 65907 55524 47005 40036 35825 29522 26682 22288 25558 17377 19907 17241 15478 17536 11971 16636 13003 15157 16506 15629 15505 23169 15254 24594 13226

make_SFS("BB.DB_dadi.dat", "pop1", 60, fold = TRUE, update_bib = FALSE)
#DB 815085
5781 25615 48316 66485 69917 66960 54518 45563 40297 34370 24780 34540 13337 30878 12232 17220 23452  4687 29394  9732  8618 28531   257 27996  5118 25375  2363 48241  607 15686

Ca.n<-make_SFS("CA.n.c_dadi.dat", "pop0", 240, fold = TRUE, update_bib = FALSE)

Ca.c<-make_SFS("CA.n.c_dadi.dat", "pop1", 514, fold = TRUE, update_bib = FALSE)

Ca.s<-make_SFS("CA.s.Mex_dadi.dat", "pop0", 120, fold = TRUE, update_bib = FALSE)

Mex<-make_SFS("CA.s.Mex_dadi.dat", "pop1", 246, fold = TRUE, update_bib = FALSE)

# when I read "CA.s.Mex.NEW_dadi.dat", it gave error saying that it was not a dadi formatted file, so I copy/pasted onto the CA.s.Mex_dadi.dat file (using the title row of that OG file)

Ca.s.new<-make_SFS("CA.s.Mex_dadi.dat", "pop0", 248, fold = TRUE, update_bib = FALSE)

Mex.new<-make_SFS("CA.s.Mex_dadi.dat", "pop1", 118, fold = TRUE, update_bib = FALSE)

#CAs.new 
423930 seg sites

CAs.new
7   237    96     2  1692   843     0  8180     0  8107  4339  1123 30952     0 44669     2 2908 10082 16004     0 44089  2906     1 38734  1064     0     3 29442   572     0  1817 28376 0    16  8343     2 19485     0     0  9759     0 12967     0     0  1570     1 23826  3456 0   957    34     0  5261   234  1281     0     0  7932     0   149  1530     0     0  4566 468     1     0  1382  5041     0     0    24  1135  2394   348     0     0   316  5423     0 3  1816     0  1009     0     0     0     0     0  4247     0     1   139    12     0    20 0     0  1166  3822     0  1001     0    18     0     2  1185  2527     0   304     0     0 71  4288     0   105  1847     0     0  2596     0  2163  1447     0


#Mex.new
417243 seg sites



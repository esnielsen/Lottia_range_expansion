# Running rangeExpansion to get psi

#load package
library(rangeExpansion)
require(sp)
require(geosphere)

#upload snp file & coords file
#make sure the .fam & .bim files are also in dir
plink.file <- load.plink.file("/ocean/projects/deb200006p/enielsen/LGwork/angsd/09_plink/all_plink_maf0.05_pctind0.5_maxdepth4.bin.bed", sep=",")
coords <- load.coord.file("/ocean/projects/deb200006p/enielsen/LGwork/10_Rfiles/RE.coords.test.csv", sep=";")
ploidy <- 2 #diploid individuals

#analyse regions, which are essentially the different sites/populations (are a column in coords file)
#it will analyse all regions (NULL), as well as those in Regs 1 & 2:
region <- list(NULL, c("REGION_1", "REGION_2"))

#combine data (here we say sep is comma as coord file is csv)
raw.data <- check.missing(plink.file, coords)

#get population-level data from individual data & calculate all pairwise statistics
pop <- make.pop(raw.data, ploidy)
psi <- get.all.psi(pop)
write.table(psi, file="/ocean/projects/deb200006p/enielsen/LGwork/10_Rfiles/rangeExp.psi.txt", col.names = F, row.names= F, quote = F)

# find origins
res <- run.regions(region=region, pop=pop, psi=psi, xlen=10, ylen=20)

P1.sum <- summary.origin.results(res$tbl[[1]])
P2.sum <- summary.origin.results(res$tbl[[2]])

write.table(P1.sum, file="/ocean/projects/deb200006p/enielsen/LGwork/10_Rfiles/rangeExp.sum.org.txt", col.names = F, row.names= F, quote = F)
write.table(P2.sum, file="/ocean/projects/deb200006p/enielsen/LGwork/10_Rfiles/rangeExp.sum.org.txt", col.names = F, row.names= F, quote = F)


#get summary:
#longitude/latitude are the coordinates of the most likely origin
#q is the strenght of the founder effect
#r1/r10/r100 is the decrease in diversity over 1/10/100 km
#rsq/pval are the correlation coefficient and correlation p-value for the most likely origin
#summary(res)

#plot output (The arguments can be seen by typing '?plot.origin.results'):
#(yellow) values indicate a likely origin
#low values(red) indicate an unlikely origin
#grey values indicate a negative correlation of diversity and an origin from that location
#pdf(file="/ocean/projects/deb200006p/enielsen/LGwork/10_Rfiles/test.rangeExp.pdf")
#plot(res)
#dev.off()

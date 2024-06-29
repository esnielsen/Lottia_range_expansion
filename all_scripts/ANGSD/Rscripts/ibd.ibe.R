### Mantel tests for Isolation by Distance/Environment
setwd("~/Desktop/PD_stuffies/IBD")
library(ecodist)
library(readxl)
library(ggplot2)

#read geographic distance matrix:
geo_dist <- read_excel("geo.dist.xlsx", sheet = "Sheet2",  col_names = FALSE)
geo.mat <- data.matrix(geo_dist, rownames.force = NA)

#log transform matrix
geo.mat.log <- log(geo.mat)

#read fst matrix:
fsts <- read.csv("fsts.csv", sep=";", row.names = 1) 

#Run mantel test
fst.man <- mantel(as.dist(fsts) ~ as.dist(geo.mat.log), nperm = 999)
fst.man

#now also try with linearized fsts (preferred method)
#linearize fst function
linearize <- function(x) {
  return((x/(1-x)))
} 

#apply function
fst.l = apply(fsts, 2, linearize)

#mantel test
fst.man.l <- mantel(as.dist(fst.l) ~ as.dist(geo.mat.log), nperm = 999)
fst.man.l


#### make IBD plot colored by clusters
eDist <- as.matrix(geo.mat.log)
gDist <- as.matrix(fst.l)
df <- data.frame( Genetic_Distance = gDist[lower.tri(gDist)],
                  Slope_Distance = eDist[ lower.tri(eDist)])
df <- df[ !is.infinite(df$Slope_Distance),]

write.table(df, "IBD.plot.clust.txt", sep="\t", row.names=FALSE)
IBD_plot_clust <- read_excel("IBD.plot.clust.xlsx", 
       col_types = c("numeric", "numeric", "skip", 
      "text"))

colors=c( "#B3EE3A", "#FFA500","#36648B", "#CD69C9")
colScale <- scale_colour_manual(name = "Cluster1",values = colors)

pdf("IBD.2color.plot.pdf")
ggplot(IBD_plot_clust,aes(x=Slope_Distance,y=Genetic_Distance)) + geom_point(aes(colour = Cluster1, size=1.8)) + geom_point(aes(colour = Cluster2, size=1.6)) + 
  stat_smooth(method=lm, formula = y ~ x, colour="black") + xlab("log(geographic distance") + ylab("FST/(1-FST")+ theme_minimal()+ colScale
dev.off()

# Read environmental variables dataframe, and create matrices per variable:
env.vars <- read.table("env.per.site.txt", header = T)
DA <- dist(env.vars$BO22_damean, method = "euclidean")
SST <- dist(env.vars$BO22_tempmean_ss, method = "euclidean")
PH <- dist(env.vars$BO22_ph, method = "euclidean")

#Run partial mantel tests per variable:
pman.DA <- mantel(as.dist(fst.l) ~ DA + as.dist(geo.mat.log), nperm=999)
pman.DA
pman.SST <- mantel(as.dist(fst.l) ~ SST + as.dist(geo.mat.log), nperm=999)
pman.SST
pman.PH <- mantel(as.dist(fst.l) ~ PH + as.dist(geo.mat.log), nperm=999)
pman.PH

#take pval1's from mantel tests and create excel file listing them


# Get significance values:
library(qvalue)
p <- mantel_pvals$pval
#If a majority of your p-values are highly significant, maybe the best strategy is to fix pi0=1 (this will apply the BH procedure and is conservative)  
qobj <- qvalue(p, fdr.level=0.05, pi0 = 1)
qobj

#$significant
#[1] FALSE FALSE  TRUE  TRUE
# SST and PH are significant

#do mantel test with dartR with built in plotting
library(dartR)
ibd <- gl.ibd(x = NULL, Dgen = fsts, Dgeo = geo.mat, Dgeo_trans='log(Dgeo)', Dgen_trans='Dgen/(1-Dgen)')+ theme_dartR(base_size=5)

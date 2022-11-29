######################## RUN GEA WITH RDA
library(vegan)

# Read geno data
lottia_geno <- read.table("by_pop_0.05_pctind0.5.mafs.rda.txt", header=TRUE)
dim(lottia_geno)
#[1] 703925     19

#Format geno data
lottia_freq<-t(lottia_geno)

#Read env data
lottia_env <- read.table("GEA.env.per.site.txt", header=TRUE)

#Run the RDA
lottia.rda <- rda(lottia_freq ~ ., data=lottia_env, scale=T)

#Look at R2, or variance explained. i.e. a adjusted R^2 of 0.0002 
# means that our constrained ordination explains about 0.02% of the variation.
RsquareAdj(lottia.rda)

#$r.squared
#[1] 0.1991065

#$adj.r.squared
#[1] 0.03892779

#on adjusted R2: Our constrained ordination explains about 4% of the variation; this low explanatory power is not surprising given that we expect that most of the SNPs in our dataset will not show a relationship with the environmental predictors (e.g., most SNPs will be neutral)

# observe the eigenvalues for the constrained axes
# reflect the variance explained by each canonical axis

summary(eigenvals(lottia.rda, model = "constrained"))
screeplot(lottia.rda)

# test for significance
anova(lottia.rda, by="terms", permu=200) #signif of env variables
anova(lottia.rda, by="axis", perm.max=500) # test axes for significance
anova(lottia.rda, perm=999) #test for overal significance

#check collinearity 
vif.cca(lottia.rda)

#plot RDA 
#SNPs are red at the center of the plot
#population are black 
#vectors are env predictors

pdf("lottia.rda12.pdf")
plot(lottia.rda, scaling=3)
text(lottia.rda, display="sites", col=1, scaling=3)
dev.off()

pdf("lottia.rda13.pdf")
plot(lottia.rda, choices=c(1,3), scaling=3)#axis 1 and 3
text(lottia.rda, display="sites", col=1, scaling=3)
dev.off()

### identify candidates

#get first 3 loadings (stored as species in the RDA object)
load.rda <- summary(lottia.rda)$species[,1:3]

#look at dist (should be close to normally dist) - those on tails likely candidates
hist(load.rda[,1], main="Loadings on RDA1")
hist(load.rda[,2], main="Loadings on RDA2")
hist(load.rda[,3], main="Loadings on RDA3") 

outliers <- function(x,z){
  lims <- mean(x) + c(-1, 1) * z * sd(x) ## f.nd loadings +/- z SD from mean loading     
  x[x < lims[1] | x > lims[2]]           # locus names in these tails
}

cand1 <- outliers(load.rda[,1], 3) #[,1] is for first loading, 3 is for 3 std devs
cand2 <- outliers(load.rda[,2], 3) 
cand3 <- outliers(load.rda[,3], 3) 

#get number of candidates (sum of those associated with the three loadings)
ncand<-length(cand1) + length ( cand2) + length ( cand3)

#Next, we'll organize our results by making one data frame with the axis, SNP name, loading, & correlation with each predictor:
cand1.df <- cbind.data.frame(rep(1, times = length(cand1)), names(cand1), unname(cand1)); colnames(cand1.df) <- c("axis", "snp", "loading")
cand2.df <- cbind.data.frame(rep(2, times = length(cand2)), names(cand2), unname(cand2)); colnames(cand2.df) <- c("axis", "snp", "loading")
cand3.df <- cbind.data.frame(rep(3, times = length(cand3)), names(cand3), unname(cand3)); colnames(cand3.df) <- c("axis", "snp", "loading")

cand <- rbind(cand1.df, cand2.df, cand3.df)
cand$snp <- as.character(cand$snp)

cand.mat <- matrix(nrow=(ncand), ncol=3)  # ncol = number of predictors
colnames(cand.mat) <- c("DA", "SST", "pH")
                        
#Let's add in the correlations of each candidate SNP with the  environmental predictors:
n<-dim(lottia_env)[2]
foo <- matrix(nrow=ncand, ncol=3)  # ncol= number of env predictors
colnames(foo) <- colnames(lottia_env)

for (i in 1:length(cand$snp)) {
  nam <- cand[i,2]
  snp.gen <- lottia_freq[,nam]
  foo[i,] <- apply(lottia_env,2,function(x) cor(x,snp.gen))
}

#table of candidates snp with loading on each axis and correlation with env predictors
cand <- cbind.data.frame(cand,foo)  
head(cand)

#investigate the candidates
#are there snp associated with several axis? if yes remove them
n_dupli<-length(cand$snp[duplicated(cand$snp)])
n_dupli
if (n_dupli>=1){cand<-cand[!duplicated(cand$snp)]}

#Next, we'll see which of the predictors each candidate SNP is most strongly correlated with:
n<-dim(cand)[2]
for (i in 1:length(cand$snp)) {
  bar <- cand[i,]
  cand[i,n+1] <- names(which.max(abs(bar[4:n]))) # gives the variable
  cand[i,n+2] <- max(abs(bar[4:n]))              # gives the correlation
}

colnames(cand)[n+1] <- "predictor"
colnames(cand)[n+2] <- "correlation"
head(cand)
table(cand$predictor) 
write.table(cand, "lottia.rda.env.outs.txt", quote=FALSE, sep=" ", row.names=FALSE)

#Let's look at RDA plots again, but this time focus in on the SNPs in the ordination space. 
#We'll color code the SNPs based on the predictor variable that they are most strongly correlated with. 

sel <- cand$snp
env <- cand$predictor
variables<-levels(as.factor(cand$predictor))
for (i in 1: length(variables))
{env[env==variables[i]] <- i} #associates a color with each env predictor

# color by predictor:
col.pred <- rownames(lottia.rda$CCA$v) # pull the SNP names and put them in a vector of colour

for (i in 1:length(sel)) {           
  foo <- match(sel[i],col.pred)
  col.pred[foo] <- env[i]
}

col.pred[grep("LOTGIsca",col.pred)] <- '#f1eef6' # non-candidate SNPs make them transparent
empty <- col.pred
empty[grep("#f1eef6",empty)] <- rgb(0,1,0, alpha=0) # transparent
empty.outline <- ifelse(empty=="#00FF0000","#00FF0000","gray32")
bg <- c(1: length(variables))

# axes 1 & 2
pdf("lottia.rda.1_2.pdf")
plot(lottia.rda, type="n", scaling=1, xlim=c(-1,1), ylim=c(-1,1))
points(lottia.rda, display="species", pch=21, cex=1, col="gray32", bg=col.pred, scaling=1)
points(lottia.rda, display="species", pch=21, cex=1, col=empty.outline, bg=empty, scaling=1)
text(lottia.rda, scaling=3, display="bp", col="#0868ac", cex=1)
legend("bottomleft", legend=c("DA","SST","pH")s, bty="n", col="gray32", pch=21, cex=1, pt.bg=bg)
dev.off()


# axes 1 & 3
pdf("lottia.rda.1_3.pdf")
plot(lottia.rda, type="n", scaling=3, xlim=c(-1,1), ylim=c(-1,1), choices=c(1,3))
points(lottia.rda, display="species", pch=21, cex=1.5, col="gray32", bg=col.pred, scaling=3, choices=c(1,3))
points(lottia.rda, display="species", pch=21, cex=1.5, col=empty.outline, bg=empty, scaling=3, choices=c(1,3))
text(lottia.rda, scaling=3, display="sites", col="black", cex=1.5)
text(lottia.rda, scaling=3, display="bp", col="#0868ac", cex=1.5)
legend("bottomleft", legend=c("DA","SST","pH"), bty="n", col="gray32", pch=21, cex=1.5, pt.bg=bg)
dev.off()

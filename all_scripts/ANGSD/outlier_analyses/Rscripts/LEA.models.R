######################## RUN GEA WITH LFMM

library(lfmm)
library(LEA)

### Get gen data
gen.input <- read.lfmm("by_pop_0.05_pctind0.5.lfmm")

#check number of samples and snps with dimensions
dim(gen.input)

#check for missing genotypes
sum(is.na(gen.input))

### Get env data
lfmm.env <- read.table("GEA.env.per.site.txt", header=TRUE)

str(lfmm.env) 

env.1 <-(lfmm.env[,1]) #damean

#run lfmm
lottia.lfmm <- lfmm_ridge(gen.input, lfmm.env, K=3) ## change K as you see fit

#calculate test statistics for the predictors
lottia.pv <- lfmm_test(Y=gen.imp, X=lfmm.env, lfmm=lottia.lfmm, calibrate="gif")

# this object includes raw z-scores and p-values, as well as GIF-calibrated scores and p-values
names(lottia.pv)

# Let’s look at the genomic inflation factor (GIF)
# An appropriately calibrated set of tests will have a GIF of around 1
lottia.pv$gif

#NOTE: Changing the value of K influences the GIF, so additional tests using the “best” value of K +/- 1 may be needed in some cases. See Francois et al. (2016) for more details.

# plot unadjusted & adjusted p-values
# you want to see a relatively flat histogram (most loci not under selection) 
# with a peak near zero, indicating candidate adaptive markers

hist(lottia.pv$pvalue[,1], main="Unadjusted p-values")       #change [,1] to different number based on which variable you are interested in 
hist(lottia.pv$calibrated.pvalue[,1], main="GIF-adjusted p-values")

# Let's change the GIF and readjust the p-values:
zscore <- lottia.pv$score[,1]   # zscores for first predictor, we only have one in our case...
(gif <- lottia.pv$gif[1])       ## d.fault GIF for the first predictor

new.gif1 <- 1.0  #choose gif as you see fit

# Manual adjustment of the p-values:
adj.pv1 <- pchisq(zscore^2/new.gif1, df=1, lower = FALSE)

#plot manually adj p-values
hist(adj.pv1, main="REadjusted p-values (GIF=1.0)") #this gives us a better peak at 0,
                                                    #meaning not too conservative


#convert the adjusted p-values to q-values

#with lfmm chosen GIF
lottia.qv <- qvalue(lottia.pv$calibrated.pvalue)$qvalues

#with our manually adjusted GIF
lottia.qv <- qvalue(adj.pv1)$qvalues

lottia.qv.df <-as.data.frame(lottia.qv)

length(which(lottia.qv < 0.05)) ## how many SNPs have an FDR < 5%?

(lottia.FDR.1 <- colnames(gen.imp)[which(lottia.qv < 0.05)]) ## identify which SNPs these are

# re-do with adjsted p-vals for each env variable
# (basically re-run p-val script with df=env var number)

#run lfmm older version (not used as it takes ageeeeessss to run)
sites_environ_matrix<-as.matrix(env.input[,-c(1:5)])
write.env(sites_environ_matrix, "sites_environ_matrix.env")

test_lfmm <- lfmm("pruned.lfmm", "sites_environ_matrix.env", K=2, rep=1, project = "new")

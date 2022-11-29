######################## GET K WITH sNMF 
######################## For LFMM Analysis

library(LEA)
library(ggplot2)

#input gen data
gen.input <- read.lfmm("by_pop_0.05_pctind0.5.lfmm")

#Trying K clusters 1-10, and running 10 iterations per K
obj.snmf = snmf(gen.input, K = 1:10, project = "new", repetitions = 10, tolerance = 0.00001, entropy=TRUE, ploidy = 2)

# plot cross-entropy criterion of all runs of the project
# here you choose K which has the lowest value 
plot(obj.snmf, cex = 1.2, col = "lightblue", pch = 19)

# get the cross-entropy value for each run at K = 2 (try for other Ks)
ce2 <- cross.entropy(obj.snmf, K= 2)
ce2

# select the run with the lowest cross-entropy value for K = ?
best <- which.min(ce) # the best run is #1 at k=3
best

#get q matrix for structure type plot
qmatrix = Q(obj.snmf, K = 2, run = best) 
qmatrix

#use same R code to plot as admixture analysis

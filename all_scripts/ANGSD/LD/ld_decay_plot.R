### To plot LD decay from plink and M. Ravinet python scripts

setwd("~/Desktop/PD_stuffies/R_work/LD")

library(tidyverse)
library(ggplot2)

# set path
core_bins <- "./LD_core.ld_decay_bins"
lead_bins <- "./LD_leading.ld_decay_bins"
tail_bins <- "./LD_trailing.ld_decay_bins"

# read in data
core <- read_tsv(core_bins, show_col_types = FALSE)
lead <- read_tsv(lead_bins, show_col_types = FALSE)
tail <- read_tsv(tail_bins, show_col_types = FALSE)

# plot LD decay
ggplot(tail, aes(distance, avg_R2)) + geom_line() +
  xlab("Distance (bp)") + ylab(expression(italic(r)^2))

#plot decay with curve
ggplot(ld_bins, aes(distance, avg_R2)) + xlab("Distance (bp)") + ylab(expression(italic(r)^2)) +geom_smooth(se = FALSE, method = "gam", formula = y ~ s(log(x)))

#Plot multiple curves
ggplot(NULL, aes(distance, avg_R2)) + 
  xlab("Distance (bp)") + ylab(expression(italic(r)^2)) + 
  geom_smooth(data = core, aes(color = "orange"), lty=1, se = FALSE, method = "gam", formula = y ~ s(log(x))) + 
  geom_smooth(data = lead, aes(color = "lightblue"), lty=2, se = FALSE, method = "gam", formula = y ~ s(log(x))) +
  geom_smooth(data = tail, aes(color = "purple"), lty=3, se = FALSE, method = "gam", formula = y ~ s(log(x))) + theme_minimal()+
  scale_color_identity(name = "Region",
                       breaks = c("orange", "lightblue", "purple"),
                       labels = c("Core", "Leading edge", "Tailing edge"),
                       guide = "legend")


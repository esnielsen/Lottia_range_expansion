### To plot LD decay from plink and M. Ravinet python scripts

setwd("~/Desktop/PD_stuffies/R_work/LD")

library(tidyverse)
library(ggplot2)

# set path
core_bins <- "./LD_core.ld_decay_bins"
lead_bins <- "./LD_leading.ld_decay_bins"
tail_bins <- "./LD_trailing.ld_decay_bins"

CA_n_bins <- "./CA.n.ld_decay_bins"
CA_c_bins <- "./CA.c.ld_decay_bins"
CA_s_bins <- "./CAs.NEW.ld_decay_bins"
Mex_bins <- "./Mex.NEW.ld_decay_bins"

KR_bins <- "./KR.ld_decay_bins"
FR_bins <- "./FR.ld_decay_bins"
BB_bins <- "./BB.ld_decay_bins"
DB_bins <- "./DB.ld_decay_bins"

# read in data
core <- read_tsv(core_bins, show_col_types = FALSE)
lead <- read_tsv(lead_bins, show_col_types = FALSE)
tail <- read_tsv(tail_bins, show_col_types = FALSE)

CA_n <- read_tsv(CA_n_bins, show_col_types = FALSE)
CA_c <- read_tsv(CA_c_bins, show_col_types = FALSE)
CA_s <- read_tsv(CA_s_bins, show_col_types = FALSE)
Mex <- read_tsv(Mex_bins, show_col_types = FALSE)

KR <- read_tsv(KR_bins, show_col_types = FALSE)
FR <- read_tsv(FR_bins, show_col_types = FALSE)
BB <- read_tsv(BB_bins, show_col_types = FALSE)
DB <- read_tsv(DB_bins, show_col_types = FALSE)

# plot LD decay
ggplot(tail, aes(distance, avg_R2)) + geom_line() +
  xlab("Distance (bp)") + ylab(expression(italic(r)^2))

#plot decay with curve
ggplot(ld_bins, aes(distance, avg_R2)) + xlab("Distance (bp)") + ylab(expression(italic(r)^2)) +geom_smooth(se = FALSE, method = "gam", formula = y ~ s(log(x)))

#Plot multiple curves (for just lead, core, trail pops)
ggplot(NULL, aes(distance, avg_R2)) + 
  xlab("Distance (bp)") + ylab(expression(italic(r)^2)) + 
  geom_smooth(data = core, aes(color = "#CD3700"), lty=1, se = FALSE, method = "gam", formula = y ~ s(log(x))) + 
  geom_smooth(data = lead, aes(color = "#36648B"), lty=2, se = FALSE, method = "gam", formula = y ~ s(log(x))) +
  geom_smooth(data = tail, aes(color = "#CD69C9"), lty=3, se = FALSE, method = "gam", formula = y ~ s(log(x))) + theme_minimal()+
  scale_color_identity(name = "Region",
                       breaks = c("#CD3700", "#36648B", "#CD69C9"),
                       labels = c("Core", "Leading edge", "Tailing edge"),
                       guide = "legend")


#Plot multiple curves for 4 lineages
pdf("CA_Mex.NEW.xaxis.LD.curves.COLS.pdf")
ggplot(NULL, aes(distance, avg_R2)) + 
  xlab("Distance (bp)") + ylab(expression(italic(r)^2)) + 
  geom_smooth(data = CA_n, aes(color = "#36648B"), lty=1, se = FALSE, method = "gam", formula = y ~ s(log(x))) + xlim(0, 150000)+
  geom_smooth(data = CA_c, aes(color = "#B3EE3A"), lty=1, se = FALSE, method = "gam", formula = y ~ s(log(x))) + xlim(0, 150000)+
  geom_smooth(data = CA_s, aes(color = "#FFA500"), lty=1, se = FALSE, method = "gam", formula = y ~ s(log(x))) + xlim(0, 150000)+theme_minimal()+
  geom_smooth(data = Mex, aes(color = "#CD69C9"), lty=1, se = FALSE, method = "gam", formula = y ~ s(log(x))) + xlim(0, 150000)+theme_minimal()+
  scale_color_identity(name = "Region",
                       breaks = c("#36648B", "#B3EE3A", "#FFA500", "#CD69C9"),
                       labels = c("CA_n", "CA_c", "CA_s", "MEX"),
                       guide = "legend")

dev.off()


#Plot multiple curves for 4 CA_north sites

pdf("CA_n.LD.curves.pdf")
ggplot(NULL, aes(distance, avg_R2)) + 
  xlab("Distance (bp)") + ylab(expression(italic(r)^2)) + 
  geom_smooth(data = KR, aes(color = "#436EEE"), lty=1, se = FALSE, method = "gam", formula = y ~ s(log(x))) + xlim(0, 150000)+
  geom_smooth(data = FR, aes(color = "#6959CD"), lty=1, se = FALSE, method = "gam", formula = y ~ s(log(x))) + xlim(0, 150000)+
  geom_smooth(data = BB, aes(color = "#009ACD"), lty=1, se = FALSE, method = "gam", formula = y ~ s(log(x))) + xlim(0, 150000)+theme_minimal()+
  geom_smooth(data = DB, aes(color = "#B9D3EE"), lty=1, se = FALSE, method = "gam", formula = y ~ s(log(x))) + xlim(0, 150000)+theme_minimal()+
  scale_color_identity(name = "Region",
                       breaks = c("#436EEE", "#6959CD", "#009ACD", "#B9D3EE"),
                       labels = c("KR", "FR", "BB", "DB"),
                       guide = "legend")

dev.off()

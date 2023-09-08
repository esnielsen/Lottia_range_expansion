#R script to do plot of theta non-syn / theta syn genetic load

library(ggplot2)

setwd("~/Desktop/PD_stuffies/R_work/gen_load")

NEW_n_s_theta_df <- read_excel("NEW.n.s.theta.df.xlsx")
NEW_n_s_theta_df$site <- factor(NEW_n_s_theta_df$site, levels=c("KR","FR","BB","DB","HP","CR","SB","VN", "GP","CA","WA", "IP","SH","SC", "CB", "PB", "SR", "BT","BA"))

#ggplot(miss_syn_percents, aes(site, percent)) +   
 # geom_bar(aes(fill = group), position = "dodge", stat="identity")

pdf("NEW.theta.n.s.plot.pdf")
ggplot(data=NEW_n_s_theta_df, aes(x=site, y=percent, group=1)) +
  geom_line()+
  geom_point()+theme_minimal()
dev.off()

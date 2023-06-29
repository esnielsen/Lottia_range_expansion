###### Get SFS from dadi file with snpR ######
######                                  ######

# this script take the .dat file from stair_01_sfs.sh and calculated the 1-pop SFS from it

setwd("~/Desktop/PD_stuffies/R_work/snpR")
library(snpR)

#read the dadi input files, indicate which is pop0 and pop1 (ie. the order you made them in angsd), the number is # haploid genos (i.e. double numb of individs), & we fold again)
Ca.n<-make_SFS("CA.n.c_dadi.dat", "pop0", 240, fold = TRUE, update_bib = FALSE)

Ca.c<-make_SFS("CA.n.c_dadi.dat", "pop1", 538, fold = TRUE, update_bib = FALSE)

Ca.s<-make_SFS("CA.s.Mex_dadi.dat", "pop0", 120, fold = TRUE, update_bib = FALSE)

Mex<-make_SFS("CA.s.Mex_dadi.dat", "pop1", 246, fold = TRUE, update_bib = FALSE)

# when I read "CA.s.Mex.NEW_dadi.dat", it gave error saying that it was not a dadi formatted file, so I copy/pasted onto the CA.s.Mex_dadi.dat file (using the title row of that OG file)

Ca.s.new<-make_SFS("CA.s.Mex_dadi.dat", "pop0", 248, fold = TRUE, update_bib = FALSE)

Mex.new<-make_SFS("CA.s.Mex_dadi.dat", "pop1", 118, fold = TRUE, update_bib = FALSE)

#after each is finished running it will give you the # of segregating sites
 #CAs.new 
423930 seg sites

#and then when you type the name of the file you just created it will print the 1dSFS (we take this and copy into the stairway blueprint file for that population)
CAs.new
7   237    96     2  1692   843     0  8180     0  8107  4339  1123 30952     0 44669     2 2908 10082 16004     0 44089  2906     1 38734  1064     0     3 29442   572     0  1817 28376 0    16  8343     2 19485     0     0  9759     0 12967     0     0  1570     1 23826  3456 0   957    34     0  5261   234  1281     0     0  7932     0   149  1530     0     0  4566 468     1     0  1382  5041     0     0    24  1135  2394   348     0     0   316  5423     0 3  1816     0  1009     0     0     0     0     0  4247     0     1   139    12     0    20 0     0  1166  3822     0  1001     0    18     0     2  1185  2527     0   304     0     0 71  4288     0   105  1847     0     0  2596     0  2163  1447     0



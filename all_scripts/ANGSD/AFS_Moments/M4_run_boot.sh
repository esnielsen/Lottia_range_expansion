#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J mom_b100
#SBATCH -p RM-shared
#SBATCH -t 2:00:00
#SBATCH --ntasks-per-node=1
set -e
set -x
# To Run
# sbatch M_b100.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork


sleep 1 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_1
sleep 2 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_2
sleep 3 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_3
sleep 4 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_4
sleep 5 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_5
sleep 6 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_6
sleep 7 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_7
sleep 8 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_8
sleep 9 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_9
sleep 10 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_10
sleep 11 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_11
sleep 12 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_12
sleep 13 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_13
sleep 14 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_14
sleep 15 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_15
sleep 16 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_16
sleep 17 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_17
sleep 18 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_18
sleep 19 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_19
sleep 20 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_20
sleep 21 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_21
sleep 22 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_22
sleep 23 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_23
sleep 24 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_24
sleep 25 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_25
sleep 26 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_26
sleep 27 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_27
sleep 28 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_28
sleep 29 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_29
sleep 30 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_30
sleep 31 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_31
sleep 32 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_32
sleep 33 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_33
sleep 34 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_34
sleep 35 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_35
sleep 36 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_36
sleep 37 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_37
sleep 38 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_38
sleep 39 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_39
sleep 40 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_40
sleep 41 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_41
sleep 42 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_42
sleep 43 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_43
sleep 44 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_44
sleep 45 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_45
sleep 46 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_46
sleep 47 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_47
sleep 48 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_48
sleep 49 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_49
sleep 50 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_50
sleep 51 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_51
sleep 52 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_52
sleep 53 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_53
sleep 54 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_54
sleep 55 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_55
sleep 56 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_56
sleep 57 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_57
sleep 58 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_58
sleep 59 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_59
sleep 60 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_60
sleep 61 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_61
sleep 62 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_62
sleep 63 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_63
sleep 64 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_64
sleep 65 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_65
sleep 66 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_66
sleep 67 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_67
sleep 68 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_68
sleep 69 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_69
sleep 70 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_70
sleep 71 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_71
sleep 72 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_72
sleep 73 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_73
sleep 74 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_74
sleep 75 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_75
sleep 76 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_76
sleep 77 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_77
sleep 78 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_78
sleep 79 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_79
sleep 80 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_80
sleep 81 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_81
sleep 82 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_82
sleep 83 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_83
sleep 84 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_84
sleep 85 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_85
sleep 86 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_86
sleep 87 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_87
sleep 88 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_88
sleep 89 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_89
sleep 90 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_90
sleep 91 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_91
sleep 92 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_92
sleep 93 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_93
sleep 94 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_94
sleep 95 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_95
sleep 96 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_96
sleep 97 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_97
sleep 98 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_98
sleep 99 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_99
sleep 100 && realSFS BMR.saf.idx C.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 1 -resample_chr 1 >p12_100

#!/bin/bash
#SBATCH --mail-user=esnielsen@ucdavis.edu
#SBATCH --mail-type=ALL
#SBATCH -J mom_b100
#SBATCH -p RM-shared
#SBATCH -t 48:00:00
#SBATCH --ntasks-per-node=10
set -e
set -x
# To Run
# sbatch M4_run_boot.sh

#Set up directory
cd /ocean/projects/deb200006p/enielsen/LGwork/Moments

#this script will bootstrap the SFSs 100 times

sleep 1 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_1

sleep 2 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_2

sleep 3 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_3

sleep 4 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_4

sleep 5 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_5

sleep 6 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_6

sleep 7 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_7

sleep 8 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_8

sleep 9 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_9

sleep 10 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_10

sleep 11 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_11

sleep 12 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_12

sleep 13 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_13

sleep 14 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_14

sleep 15 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_15

sleep 16 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_16

sleep 17 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_17

sleep 18 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_18

sleep 19 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_19

sleep 20 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_20

sleep 21 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_21

sleep 22 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_22

sleep 23 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_23

sleep 24 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_24

sleep 25 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_25

sleep 26 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_26

sleep 27 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_27

sleep 28 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_28

sleep 29 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_29

sleep 30 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_30

sleep 31 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_31

sleep 32 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_32

sleep 33 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_33

sleep 34 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_34

sleep 35 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_35

sleep 36 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_36

sleep 37 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_37

sleep 38 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_38

sleep 39 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_39

sleep 40 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_40

sleep 41 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_41

sleep 42 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_42

sleep 43 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_43

sleep 44 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_44

sleep 45 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_45

sleep 46 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_46

sleep 47 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_47

sleep 48 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_48

sleep 49 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_49

sleep 50 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_50

sleep 51 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_51

sleep 52 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_52

sleep 53 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_53

sleep 54 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_54

sleep 55 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_55

sleep 56 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_56

sleep 57 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_57

sleep 58 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_58

sleep 59 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_59

sleep 60 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_60

sleep 61 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_61

sleep 62 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_62

sleep 63 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_63

sleep 64 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_64

sleep 65 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_65

sleep 66 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_66

sleep 67 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_67

sleep 68 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_68

sleep 69 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_69

sleep 70 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_70

sleep 71 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_71

sleep 72 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_72

sleep 73 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_73

sleep 74 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_74

sleep 75 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_75

sleep 76 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_76

sleep 77 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_77

sleep 78 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_78

sleep 79 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_79

sleep 80 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_80

sleep 81 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_81

sleep 82 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_82

sleep 83 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_83

sleep 84 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_84

sleep 85 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_85

sleep 86 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_86

sleep 87 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_87

sleep 88 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_88

sleep 89 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_89

sleep 90 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_90

sleep 91 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_91

sleep 92 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_92

sleep 93 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_93

sleep 94 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_94

sleep 95 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_95

sleep 96 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_96

sleep 97 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_97

sleep 98 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_98

sleep 99 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_99

sleep 100 && realSFS p2.CA.s.saf.idx p2.Mex.saf.idx -ref 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -anc 03_genome/Lottia_gigantea.Lotgi1.dna.toplevel.fa -bootstrap 5 -P 10 -resample_chr 1 > p2.CA.Mex/CA.s.Mex_100

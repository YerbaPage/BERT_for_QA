#/bin/bash
#BSUB -J Dan
#BSUB -e /nfsshare/home/dl08/Dan/log/Dan_hnm3%J.err
#BSUB -o /nfsshare/home/dl08/Dan/log/Dan_hnm3%J.out
#BSUB -n 1
#BSUB -q gauss
#BSUB -R "select [ngpus>0] rusage [ngpus_excl_p=4]"
python /nfsshare/home/dl08/Dan/TFQA1/code/1_1/hnm_set3.py
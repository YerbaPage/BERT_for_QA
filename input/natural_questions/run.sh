#/bin/bash
#BSUB -J Dan
#BSUB -e /nfsshare/home/dl08/Dan/log/Dan_simplify%J.err
#BSUB -o /nfsshare/home/dl08/Dan/log/Dan_simplify%J.out
#BSUB -n 1
#BSUB -q cauchy
python simplyfy.py
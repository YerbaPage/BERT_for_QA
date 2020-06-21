#/bin/bash
#BSUB -J Dan
#BSUB -e /nfsshare/home/dl08/Dan/log/Danval_%J.err
#BSUB -o /nfsshare/home/dl08/Dan/log/Danval_%J.out
#BSUB -n 1
#BSUB -q gauss
#BSUB -R "select [ngpus>0] rusage [ngpus_excl_p=4]"
python valid_xlarge_on_test.py > valid_xlarge_on_test.txt

#/bin/bash
#BSUB -J Dan
#BSUB -e /nfsshare/home/dl08/Dan/log/Danblarge4_ngnew_%J.err
#BSUB -o /nfsshare/home/dl08/Dan/log/Danblarge4_ngnew_%J.out
#BSUB -n 1
#BSUB -q gauss
#BSUB -R "select [ngpus>0] rusage [ngpus_excl_p=1]"
python -m torch.distributed.launch --nproc_per_node=1 train_epoch0_ngnew.py > train_epoch0_ngnew.txt

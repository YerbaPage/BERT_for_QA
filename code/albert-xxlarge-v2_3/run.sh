#/bin/bash
#BSUB -J Dan
#BSUB -e /nfsshare/home/dl08/Dan/log/Dan_albert2%J.err
#BSUB -o /nfsshare/home/dl08/Dan/log/Dan_albert2%J.out
#BSUB -n 1
#BSUB -q gauss
#BSUB -R "select [ngpus>0] rusage [ngpus_excl_p=4]"
python -m torch.distributed.launch --nproc_per_node=4 train_epoch0.py > train_epoch0.txt
python -m torch.distributed.launch --nproc_per_node=4 train_epoch1.py > train_epoch1.txt
python -m torch.distributed.launch --nproc_per_node=4 train_epoch2.py > train_epoch2.txt


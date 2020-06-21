#/bin/bash
#BSUB -J Dan
#BSUB -e /nfsshare/home/dl08/Dan/log/Danblarge4_%J.err
#BSUB -o /nfsshare/home/dl08/Dan/log/Danblarge4_%J.out
#BSUB -n 1
#BSUB -q gauss
#BSUB -R "select [ngpus>0] rusage [ngpus_excl_p=1]"
export CUDA_VISIBLE_DEVICES=0
python -m torch.distributed.launch --nproc_per_node=1 train_epoch0_device.py > train_epoch0_device.txt


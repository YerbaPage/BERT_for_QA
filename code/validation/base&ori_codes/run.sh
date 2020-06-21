#/bin/bash
#BSUB -J Dan
#BSUB -e /nfsshare/home/dl08/Dan/log/Danval_%J.err
#BSUB -o /nfsshare/home/dl08/Dan/log/Danval_%J.out
#BSUB -n 1
#BSUB -q gauss
#BSUB -R "select [ngpus>0] rusage [ngpus_excl_p=1]"
python valid.py
python nq_eval.py --gold_path=../../input/natural_questions/v1.0-simplified_nq-dev-all.jsonl.gz --predictions_path=predictions.json > predictions.txt

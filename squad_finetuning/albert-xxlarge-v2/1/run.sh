#/bin/bash
#BSUB -J Dan
#BSUB -e /nfsshare/home/dl08/Dan/log/Dan_squad%J.err
#BSUB -o /nfsshare/home/dl08/Dan/log/Dan_squad%J.out
#BSUB -n 1
#BSUB -q gauss
#BSUB -R "select [ngpus>0] rusage [ngpus_excl_p=4]"
python -m torch.distributed.launch --nproc_per_node=4 /nfsshare/home/dl08/Dan/TFQA1/squad_finetuning/albert-xxlarge-v2/1/run_squad.py \
    --model_type albert \
    --model_name_or_path ../../../huggingface_pretrained/albert-xxlarge-v2/ \
    --do_train \
    --do_eval \
    --do_lower_case \
    --version_2_with_negative \
    --train_file ../../squad2/train-v2.0.json \
    --predict_file ../../squad2/dev-v2.0.json \
    --learning_rate=1e-5 \
    --num_train_epochs=2 \
    --max_seq_length=384 \
    --max_query_length=64 \
    --doc_stride=128 \
    --output_dir output/ \
    --per_gpu_eval_batch_size=3  \
    --per_gpu_train_batch_size=3   \
    --overwrite_output_dir \
    --logging_steps=9999999 \
    --save_steps=9999999 \
    --seed=1001 \
    --fp16 \
    --threads=10 \
    > out.txt

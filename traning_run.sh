export HF_DATASETS_OFFLINE=1
export TRANSFORMERS_OFFLINE=1

DATASET='/Users/lecole/dev/traning_images'
LOGDIR=$(ls -td logs/* | head -1)

python main.py --base configs/stable-diffusion/v1-lc-finetune-mywords.yaml \
               --train \
               --actual_resume models/stable_diffusion/v1-5-pruned-emaonly.ckpt \
               --name lc-v1 \
               --gpus 0, \
               --data_root  $DATASET \
               --seed 12345 \
               --scale_lr True \
               --no-test
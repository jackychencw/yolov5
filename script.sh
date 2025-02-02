#!/bin/bash
#SBATCH --nodes=1 # Cores proportional to GPUs: 6 on Cedar, 10 on Béluga, 16 on Graham.
#SBATCH --gpus-per-node=4
#SBATCH --partition=compute_full_node
#SBATCH --output=./outputs/%N-%J.OUT
#SBATCH --time=0-06:00     # DD-HH:MM:SS

module load cuda/10.2.89 cudnn/7.6.5.32 anaconda3/2019.10 gcc/7.5.0
source activate pytorch-gpu
cd $SCRATCH/yolov5
wandb offline
python train.py --img 1920 --batch 64 --epochs 1000 --data ./data/spaghetti.yaml --cfg ./models/yolov5l.yaml --weights ""
conda deactivate

#!/bin/bash
#SBATCH --mem-per-cpu=64GB
#SBATCH -p gpu
#SBATCH --gpus 1
#SBATCH -t 1:00:00

export PATH=$PATH:/home/groups/ruthm/bcritt/miniconda3/bin

ml cuda/10.2.89 
source activate blink37
python blink.py
source deactivate

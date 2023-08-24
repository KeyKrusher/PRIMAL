##!/bin/bash
##This script test different conda environments running on Cascade Lake GPU Nodes
#PBS -q v100@pbspl4
#PBS -lselect=1:ncpus=12:ngpus=2:model=cas_gpu:mem=30g
#PBS -l place=scatter:exclhost
#PBS -j oe
#PBS -N model_cas_gpu-check
#PBS -W group_list=a1509


# load analytix modules
module use -a /swbuild/analytix/tools/modulefiles
module load miniconda3/v4
# We might need to load cuda here
#module load cuda/10.1.243
#q: How can I specify that cuda 8 is used
#a: module load cuda/8.0.61
# module load cuda/8.0.61


# Activate conda environment here:
source activate primal-deploy


## Run script here
python DRLMAPF_A3C_RNN.py

conda deactivate
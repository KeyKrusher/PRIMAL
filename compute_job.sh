##!/bin/bash
##This script test different conda environments running on Cascade Lake GPU Nodes
## This script was adapted from the NAS example for conda environments and needs some changes to the configuration..
## The actual shell code that is used for the job (below the module statements) should be working well.
#PBS -q v100@pbspl4
#PBS -W block=true
#PBS -lselect=1:ncpus=96:ngpus=8:model=cas_gpu:mem=600g
#PBS -l place=scatter:exclhost
#PBS -l walltime=48:00:00
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
# NOTE: cuda 8 isn't listed as a current module, you might have to ask the NAS on how to use it.


# Activate conda environment here:
source activate primal-deploy


## Run script here
python DRLMAPF_A3C_RNN.py

conda deactivate
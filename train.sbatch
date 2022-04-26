#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --time=8:00:00
#SBATCH --mem=16GB
#SBATCH --gres=gpu
#SBATCH --job-name=faceswap
#SBATCH --output=faceswap.out

  
module load amber/openmpi/intel/20.06;
module load anaconda3/2020.07;
source /share/apps/anaconda3/2020.07/etc/profile.d/conda.sh;
conda activate /scratch/mdp9405/DeepFakeTorch/penv;
python3 ./train.py -face_a_dir a -face_b_dir b -n_steps 100000


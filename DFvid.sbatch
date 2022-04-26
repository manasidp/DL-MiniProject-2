#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --time=8:00:00
#SBATCH --mem=16GB
#SBATCH --gres=gpu
#SBATCH --job-name=DFvid
#SBATCH --output=DFvid.out

  
module load amber/openmpi/intel/20.06;
module load anaconda3/2020.07;
source /share/apps/anaconda3/2020.07/etc/profile.d/conda.sh;
conda activate /scratch/mdp9405/DeepFakeTorch/penv;
#python3 video_writer.py 
python3 writes_images.py

##-original_video data_dst.mp4 -model_location saved_models/model.pt -out_name myswappedvideo1 -decoder b





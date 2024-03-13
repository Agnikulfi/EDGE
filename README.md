# EDGE-Team

docker build -t pytorch-gpu .

docker run --gpus all -it pytorch-gpu

source activate /miniconda/envs/UFold
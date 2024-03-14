# EDGE-Team

docker build -t pytorch-gpu .

docker run --gpus all --shm-size 8G -it pytorch-gpu

source activate /miniconda/envs/UFold
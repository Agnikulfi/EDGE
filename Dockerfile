# Use an official PyTorch GPU image as the base image
FROM pytorch/pytorch:latest

# Install git and wget
RUN apt-get update && \
    apt-get install -y git wget

# Set the working directory to /baselines
WORKDIR /baselines

# Clone the GitHub repository
RUN git clone https://github.com/Agnikulfi/EDGE-Team.git

# Navigate to the root of the GitHub repository
WORKDIR /baselines/EDGE-Team

# Install conda and create the environment
RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh && \
    bash miniconda.sh -b -p /miniconda && \
    rm miniconda.sh && \
    /miniconda/bin/conda env create -f UFold.yaml

# Set the path for the conda environment
#ENV PATH="/miniconda/envs/UFold/bin:$PATH"

# Activate the conda environment
#RUN echo "conda activate /miniconda/envs/UFold" > ~/.bashrc
#SHELL ["/bin/bash", "--login", "-c"]
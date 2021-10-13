#!/bin/bash
PROJ_DIR=$(pwd); set -o allexport; source .env; set +o allexport
echo "2-Installing Docker.."

# DOCKER INSTALL
# https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html#installation-guide

# Setting up Docker
curl https://get.docker.com | sh \
  && sudo systemctl --now enable docker

# Setting up NVIDIA Container Toolkit
distribution=$(. /etc/os-release;echo $ID$VERSION_ID) \
   && curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | sudo apt-key add - \
   && curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | sudo tee /etc/apt/sources.list.d/nvidia-docker.list

# Install the nvidia-docker2 package (and dependencies) after updating the package listing:
sudo apt-get update
sudo apt-get install -y nvidia-docker2
sudo systemctl restart docker
sudo docker run --rm --gpus all nvidia/cuda:11.0-base nvidia-smi
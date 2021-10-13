#!/bin/bash
PROJ_DIR=$(pwd); set -o allexport; source .env; set +o allexport
echo "3-Building Docker Container.."

# Documentation
# https://github.com/PyTorchLightning/pytorch-lightning/tree/master/dockers

# Search tag here
# https://hub.docker.com/r/pytorchlightning/pytorch_lightning/tags?page=1&ordering=last_updated

docker build -t ${DOCKER_IMAGE_NAME} -f src/Dockerfile .
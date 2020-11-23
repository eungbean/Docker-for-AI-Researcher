#!/bin/bash
PROJ_DIR=`dirname $(cd $(dirname $0); pwd)`
source ${PROJ_DIR}/SETTINGS.sh
if [ ${DOCKER_BUILD_WITH_PULL} = 'true' ] ; then
    echo "Pull Docker Image for VSode"
    sudo docker pull ${VS_IMAGE_NAME}
else
    rm -rf src/vscode/config.yaml
    echo """bind-addr: 127.0.0.1:8080
auth: password
password: ${VS_PASSWORD}
cert: false""" >> src/vscode/config.yaml

    # BUILD DOCKER IMAGE
    echo "Build Docker Image for VSode"
    cd ${PROJ_DIR} && \
    docker build -t ${VS_IMAGE_NAME} -f src/Dockerfile-vscode.dev .
fi

# TEST DOCKER IMAGE
sudo docker run --rm --gpus=all ${VS_IMAGE_NAME} nvidia-smi
echo "Docker Image ${VS_IMAGE_NAME} Build Done"
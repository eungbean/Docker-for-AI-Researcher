#!/bin/bash
PROJ_DIR=`dirname $(cd $(dirname $0); pwd)`
source ${PROJ_DIR}/SETTINGS.sh

if [${DOCKER_BUILD_WITH_PULL}=true] ; then
    docker pull ${JP_IMAGE_NAME}
else
    echo "bind-addr: 127.0.0.1:8080
    auth: password
    password: ${VS_PASSWORD}
    cert: false" >> config.yaml #TODO test

    # BUILD DOCKER IMAGE
    cd ${PROJ_DIR} && \
    docker build -t ${VS_IMAGE_NAME} -f ${PROJ_DIR}/Dockerfile-vscode.dev .
fi

# TEST DOCKER IMAGE
sudo docker run --rm --gpus=all ${VS_IMAGE_NAME} nvidia-smi

echo "Docker Image ${VS_IMAGE_NAME} Build Done"
#!/bin/bash
PROJ_DIR=`dirname $(cd $(dirname $0); pwd)`
source ${PROJ_DIR}/SETTINGS.sh

if [${DOCKER_BUILD_WITH_PULL}=true] ; then
    docker pull ${VS_IMAGE_NAME}
else
    # BUILD DOCKER IMAGE
    cd ${PROJ_DIR} && \
    docker build -t ${VS_IMAGE_NAME} -f ${PROJ_DIR}/Dockerfile-jupyter.dev .
fi

    # TEST DOCKER IMAGE
    sudo docker run --rm --gpus=all ${VS_IMAGE_NAME} nvidia-smi
#!/bin/bash
PROJ_DIR=`dirname $(cd $(dirname $0); pwd)`
source ${PROJ_DIR}/SETTINGS.sh

# PRINT PROGRESS
echo "PROJECT FOLDER: $PROJ_DIR"
echo "mapping SSH port      Host:${JP_DEFAULT_PORT_HOST} --> Container:22"
echo "mapping JUPYTER port  Host:${JP_JPCODE_PORT_HOST} --> Container:8888"
echo "mapping TB port       Host:${JP_TB_PORT_HOST} --> Container:6006"

# RUN THE CONTAINER
docker run -d -P -it --ipc=host \
	--gpus=${GPUS} \
	-p ${JP_DEFAULT_PORT_HOST}:22 \
	-p ${JP_JUPYTER_PORT_HOST}:8888 \
	-p ${JP_TB_PORT_HOST}:6006 \
	-v ${PROJ_DIR_HOST}:${PROJ_DIR_CONTAINER} \
	-v ${DATASET_DIR_HOST}:${DATASET_DIR_CONTAINER} \
	-v ${OUTPUT_DIR_HOST}:${OUTPUT_DIR_CONTAINER} \
	--name ${JP_CONTAINER_NAME} \
	${JP_IMAGE_NAME} \
    jupyter lab --no-browser \
    --ip=0.0.0.0 \
    --allow-root \
    --NotebookApp.token= --notebook-dir='${PROJ_DIR_CONTAINER}'
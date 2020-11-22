#!/bin/bash
PROJ_DIR=`dirname $(cd $(dirname $0); pwd)`
source ${PROJ_DIR}/SETTINGS.sh

# PRINT PROGRESS
echo "PROJECT FOLDER: $PROJ_DIR"
echo "mapping SSH port      Host:${VS_DEFAULT_PORT_HOST} --> Container:22"
echo "mapping VSCODE port   Host:${VS_CODE_PORT_HOST} --> Container:8080"
echo "mapping TB port       Host:${VS_TB_PORT_HOST} --> Container:6006"

# RUN THE CONTAINER
sudo docker run -P -dit --ipc=host \
	--gpus=${GPUS} \
	-p ${VS_DEFAULT_PORT_HOST}:22 \
	-p ${VS_CODE_PORT_HOST}:8080 \
	-p ${VS_TB_PORT_HOST}:6006 \
	-v ${PROJ_DIR_HOST}:${PROJ_DIR_CONTAINER} \
	--name ${VS_CONTAINER_NAME} \
	${VS_IMAGE_NAME}

	# If you want bind more volume, just add line below.
	# -v ${DATASET_DIR_HOST}:${DATASET_DIR_CONTAINER} \
	# -v ${OUTPUT_DIR_HOST}:${OUTPUT_DIR_CONTAINER} \
	#..
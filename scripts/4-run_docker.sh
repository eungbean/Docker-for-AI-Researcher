#!/bin/bash

# PRINT PROGRESS
echo "PROJECT FOLDER: $PROJ_DIR"
echo "mapping SSH port      Host:${D_SSH_PORT_HOST} --> Container:  22"
echo "mapping TB port       Host:${D_TB_PORT_HOST} --> Container:6006"
echo "mapping Additional	Host:${D_ADDITIONAL_PORTS}"

# RUN THE CONTAINER
RUN_COMMAND="\
sudo docker run -P -dit --ipc=host \
	--gpus=all \
	-v ${DIR_HOST}:${DIR_CONTAINER} \
	-p ${D_SSH_PORT_HOST}:22 \
	-p ${D_TB_PORT_HOST}:6006 \
	-p ${D_ADDITIONAL_PORTS} \
	--name ${DOCKER_CONTAINER_NAME} \
	-e SSH_ROOT_PASSWORD=${SSH_ROOT_PASSWORD} \
	${DOCKER_IMAGE_NAME}
	"

echo $RUN_COMMAND
$RUN_COMMAND

# If you want bind more volume, just add line below.
# -v ${DATASET_DIR_HOST}:${DATASET_DIR_CONTAINER} \
# -v ${OUTPUT_DIR_HOST}:${OUTPUT_DIR_CONTAINER} \
#..
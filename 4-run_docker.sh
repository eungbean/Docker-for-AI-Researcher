#!/bin/bash
PROJ_DIR=$(pwd); set -o allexport; source .env; set +o allexport
echo "4-Running Docker Container.."

echo "PROJECT FOLDER: $PROJ_DIR"
echo "mapping SSH port      Host:${PORT_SSH} --> Container:  22"
echo "mapping TB port       Host:${PORT_TBD} --> Container:6006"
echo "mapping Additional configs:${ADDITONAL_CONFIGURATIONS}"

# RUN THE CONTAINER
RUN_COMMAND="\
sudo docker run -P -dit --ipc=host \
	--gpus=all \
	-v ${DIR_HOST}:${DIR_CONT} \
	-p ${PORT_SSH} \
	-p ${PORT_TBD} \
	${ADDITONAL_CONFIGURATIONS} \
	--name ${DOCKER_CONTAINER_NAME}_test \
	${DOCKER_IMAGE_NAME}
	"

echo $RUN_COMMAND
$RUN_COMMAND
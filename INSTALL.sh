#!/bin/bash
PROJ_DIR=$(pwd)
source ${PROJ_DIR}/SETTINGS.sh

./src/1-terminal_setting.sh
./src/2-docker_setup.sh

if [ ${SETUP_DOCKER_VSCODE}=true] ; then
    ./src/3-build_docker_jupyter.sh
    ./src/4-run_docker_jupyter.sh
fi

if [ ${SETUP_DOCKER_JUPYTERLAB}=true] ; then
    ./src/3-build_docker_vscode.sh
    ./src/4-run_docker_vscode.sh
fi

if [ $SETTING_ALIAS=true] ; then
./src/5-setting_alias.sh
fi
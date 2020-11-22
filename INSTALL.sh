#!/bin/bash
PROJ_DIR=$(pwd)
source ${PROJ_DIR}/SETTINGS-Eungbean.sh

if [ ${SET_1_TERMINAL_SETTING} = 'true' ] ; then
    echo "Setting Terminal.."
    ./scripts/1-terminal_setting.sh
fi

if [ ${SET_2_DOCKER_INSTALL} = 'true' ] ; then
    echo "Installing Docker.."
    ./scripts/2-docker_setup.sh
fi

if [ ${SET_3_VSCODE_CONTAINER_BUILD} = 'true' ] ; then
    echo "Setting VS Code.."
    ./scripts/3-build_docker_vscode.sh
fi

if [ ${SET_4_VSCODE_CONTAINER_RUN} = 'true' ] ; then
    echo "Setting VS Code.."
    ./scripts/4-run_docker_vscode.sh
fi

if [ $SET_5_SETTING_ALIAS = 'true' ] ; then
    echo "Setting Alias.."
    ./scripts/5-setting_alias.sh
fi
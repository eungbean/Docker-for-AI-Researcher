#!/bin/bash

PROJ_DIR=$(pwd)
<<<<<<< HEAD
set -o allexport; source .env; set +o allexport

# echo "Setting Terminal.."
# ./scripts/1-terminal_setting.sh
=======
source ${PROJ_DIR}/SETTINGS.sh
if [ ${SET_1_TERMINAL_SETTING} = 'true' ] ; then
    echo "Setting Terminal.."
    ./scripts/1-terminal_setting.sh
fi
>>>>>>> origin/master

# echo "Installing Docker.."
# ./scripts/2-docker_setup.sh

echo "Docker Build.."
./scripts/3-docker_build.sh

echo "Run Docker Container.."
./scripts/4-run_docker.sh

# echo "Setting Alias.."
# ./scripts/5-setting_alias.sh

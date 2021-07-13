#!/bin/bash

PROJ_DIR=$(pwd)
set -o allexport; source .env; set +o allexport

# echo "Setting Terminal.."
# ./scripts/1-terminal_setting.sh

# echo "Installing Docker.."
# ./scripts/2-docker_setup.sh

echo "Docker Build.."
./scripts/3-docker_build.sh

echo "Run Docker Container.."
./scripts/4-run_docker.sh

# echo "Setting Alias.."
# ./scripts/5-setting_alias.sh

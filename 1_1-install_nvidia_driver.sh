#!/bin/bash
PROJ_DIR=$(pwd); set -o allexport; source .env; set +o allexport
echo "1_1-Installing NVIDIA Drivers.."

#Driver autoinstall
sudo add-apt-repository -y ppa:graphics-drivers/ppa
sudo apt-get update
sudo ubuntu-drivers autoinstall
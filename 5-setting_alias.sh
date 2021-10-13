#!/bin/bash
PROJ_DIR=$(pwd); set -o allexport; source .env; set +o allexport
echo "5-Setting Alias.."

echo "alias vim=\"nvim\"
alias vi=\"nvim\"
alias vimdiff=\"nvim -d\"
export EDITOR=\"/usr/local/bin/nvim\"

alias ${ALIAS_NVIDIA_SMI}=\"watch -d -n 0.5 nvidia-smi\"
alias ${ALIAS_GPUSTAT}=\"gpustat -i\"" >> ~/.zshrc

source ~/.zshrc
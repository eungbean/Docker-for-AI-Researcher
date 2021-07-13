#!/bin/bash
PROJ_DIR=`dirname $(cd $(dirname $0); pwd)`
<<<<<<< HEAD
source ${PROJ_DIR}/CONFIGS.sh

=======
source ${PROJ_DIR}/SETTINGS.sh
>>>>>>> origin/master
echo "alias vim=\"nvim\"
alias vi=\"nvim\"
alias vimdiff=\"nvim -d\"
export EDITOR=\"/usr/local/bin/nvim\"

alias ${ALIAS_NVIDIA_SMI}=\"watch -d -n 0.5 nvidia-smi\"
alias ${ALIAS_GPUSTAT}=\"gpustat -i\"" >> ~/.zshrc

# after container launch
if [ ${SETUP_DOCKER_VSCODE} = 'true' ] ; then
    echo "alias code='docker exec -it ${VS_CONTAINER_NAME} /usr/bin/zsh'" >> ~/.zshrc
fi

if [ ${SETUP_DOCKER_JUPYTERLAB} = 'true' ] ; then
    echo "alias lab='docker exec -it ${JP_CONTAINER_NAME} /usr/bin/zsh'" >> ~/.zshrc
fi

source ~/.zshrc
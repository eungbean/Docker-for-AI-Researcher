#!/bin/bash
PROJ_DIR=`dirname $(cd $(dirname $0); pwd)`
source ${PROJ_DIR}/SETTINGS.sh

sudo add-apt-repository -y ppa:graphics-drivers/ppa
sudo apt-get update

sudo apt-get install -y zsh
sudo apt-get install -y zsh-completions

sudo mkdir ~/temp
cd ~/temp
chsh -s `which zsh`

git clone https://github.com/powerline/fonts.git
cd fonts
./install.sh
cd ..

sudo curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | bash

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting
echo "source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc

git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
echo "source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc

sudo apt-get install -y neovim
sudo curl -sLf https://spacevim.org/install.sh | bash
sudo apt-get install -y git git-lfs

#SSH
sudo apt-get install -y ssh
sudo ufw enable
sudo ufw allow $JP_DEFAULT_PORT_HOST \
    $JP_JPCODE_PORT_HOST \
    $JP_TB_PORT_HOST \
    $VS_DEFAULT_PORT_HOST \
    $VS_VSCODE_PORT_HOST \
    $VS_TB_PORT_HOST

#GPU Monitor
pip install gpustat
pip install glances
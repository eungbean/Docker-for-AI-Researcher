#!/bin/bash
PROJ_DIR=`dirname $(cd $(dirname $0); pwd)`
source ${PROJ_DIR}/SETTINGS.sh

sudo add-apt-repository -y ppa:graphics-drivers/ppa
sudo apt-get update

#zsh
sudo apt-get install -y zsh
sudo apt-get install -y zsh-completions

sudo mkdir ~/temp
cd ~/temp
chsh -s `which zsh`

# powerlinefont
git clone https://github.com/powerline/fonts.git
cd fonts
./install.sh
cd ..

#ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#zsh-autocompletion
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

#zsh-autosuggestion
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

echo "plugins=(zsh-syntax-highlighting zsh-autosuggestions)" >> ${ZDOTDIR:-$HOME}/.zshrc

sudo apt-get install -y neovim
sudo apt-get install -y git git-lfs

#SSH
sudo apt-get install -y ssh
sudo ufw enable
if [ $JP_DEFAULT_PORT_HOST ]; then sudo ufw allow $JP_DEFAULT_PORT_HOST;
if [ $JP_JPCODE_PORT_HOST ]; then sudo ufw allow $JP_JPCODE_PORT_HOST;
if [ $JP_TB_PORT_HOST ]; then sudo ufw allow $JP_TB_PORT_HOST;
if [ $VS_DEFAULT_PORT_HOST ]; then sudo ufw allow $VS_DEFAULT_PORT_HOST;
if [ $VS_VSCODE_PORT_HOST ]; then sudo ufw allow $VS_VSCODE_PORT_HOST;
if [ $VS_TB_PORT_HOST ]; then sudo ufw allow $VS_TB_PORT_HOST;

#GPU Monitoring tools
pip install -y gpustat
pip install -y glances

#cleanup
sudo apt autoremove
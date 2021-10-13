#!/bin/bash
PROJ_DIR=$(pwd); set -o allexport; source .env; set +o allexport
echo "1_2-Setting Terminal.."

#zsh
echo "Installing zsh.."
sudo apt-get install -y zsh
sudo apt-get install -y zsh-completions

sudo mkdir ~/temp
cd ~/temp
chsh -s `which zsh`

# powerlinefont
echo "Installing PowerlineFont.."
git clone https://github.com/powerline/fonts.git
cd fonts
./install.sh
cd ..

#ohmyzsh
echo "Installing ohmyzsh.."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#zsh-autocompletion
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

#zsh-autosuggestion
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

echo "plugins=(zsh-syntax-highlighting zsh-autosuggestions)" >> ${ZDOTDIR:-$HOME}/.zshrc

echo "Installing neovim.."
sudo apt-get install -y neovim
sudo apt-get install -y git git-lfs

#SSH
echo "Installing ssh.."
sudo apt-get install -y ssh

#GPU Monitoring tools
pip install -y gpustat
pip install -y glances

#cleanup
sudo apt autoremove
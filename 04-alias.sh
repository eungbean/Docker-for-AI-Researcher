echo "alias vim="nvim"
alias vi="nvim"
alias vimdiff="nvim -d"
export EDITOR="/usr/local/bin/nvim"

alias gpu="watch -d -n 0.5 nvidia-smi"
alias gpu2="gpustat -i"" >> ${ZDOTDIR:-$HOME}/.zshrc

# after container launch
echo "alias lab='docker exec -it lab /usr/bin/zsh'" >> ${ZDOTDIR:-$HOME}/.zshrc
echo "alias lab='docker exec -it code /usr/bin/zsh'" >> ${ZDOTDIR:-$HOME}/.zshrc
source ~/.zshrc
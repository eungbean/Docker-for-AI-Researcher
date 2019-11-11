echo "export DATASET='/data/DATASET'" >> ${ZDOTDIR:-$HOME}/.zshrc
echo "export DAVIS='/data/DATASET/DAVIS'" >> ${ZDOTDIR:-$HOME}/.zshrc
echo "export DAVISimage='/data/DATASET/DAVIS/JPEGImages/480p'" >> ${ZDOTDIR:-$HOME}/.zshrc
echo "export DAVISannot='/data/DATASET/DAVIS/Annotations/480p'" >> ${ZDOTDIR:-$HOME}/.zshrc
source ~/.zshrc

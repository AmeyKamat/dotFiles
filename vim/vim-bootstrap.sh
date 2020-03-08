#!/bin/bash
# Script to install vim environment

PROMPT="[VIM]"

echo "${PROMPT} Setting up vim"
echo
echo "${PROMPT} Intitialising vim directory..."
mkdir ~/.vim

echo "${PROMPT} Installing plug.vim..."
mkdir ~/.vim/autoload
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo "${PROMPT} plug.vim installation complete."

echo "${PROMPT} Creating symlinks..."
cp ./vim/.vimrc ~/.vimrc
vim +PlugInstall +qall
echo "${PROMPT} Plugins installed."
echo
echo "${PROMPT} vim installation complete."

#!/bin/bash

ln -s ~/.dotfiles/.vim/vimrc ~/.vimrc
ln -s ~/.dotfiles/.vim/ ~/.vim
ln -s ~/.dotfiles/.bash/.bashrc ~/.bashrc
ln -s ~/.dotfiles/.bash/.bash_profile ~/.bash_profile
ln -s ~/.dotfiles/.bash/.profile ~/.profile

# Install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
#Install Plugins
vim +PluginInstall +qall

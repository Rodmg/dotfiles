#!/usr/bin/env bash

#Setup append line to .bashrc and .bash_profile for loading dotfiles/.bash*
echo "[ -r ~/dotfiles/bashrc ] && source ~/dotfiles/bashrc" >> ~/.bashrc
echo "[ -r ~/dotfiles/bash_profile ] && source ~/dotfiles/bash_profile" >> ~/.bash_profile

#Symlink .vimrc and .vim/
#backup old files
mv ~/.vimrc ~/.vimrc_backup
mv ~/.vim ~/.vim_backup

#make symlinks
ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/vim ~/.vim

#Install Vundle
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim +PluginInstall +qall

echo 'Done.'

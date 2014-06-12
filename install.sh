#!/bin/sh

ln -s $(pwd)/.bash_aliases ~/.bash_aliases
ln -s $(pwd)/.bashrc ~/.bashrc
ln -s $(pwd)/.gitconfig ~/.gitconfig
ln -s $(pwd)/.gitignore ~/.gitignore

echo "Don't forget to edit your name and email in .gitconfig"

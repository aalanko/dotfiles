#!/bin/sh

cp -i .bash_aliases ~/.bash_aliases
cp -i .bashrc ~/.bashrc
cp -i .gitconfig ~/.gitconfig

echo "Enter your name (.gitconfig):"
read fullname
echo "Enter your email (.gitconfig):"
read email

echo "[user]" >> ~/.gitconfig
echo -e "\tname = $fullname" >> ~/.gitconfig
echo -e "\temail = $email" >> ~/.gitconfig

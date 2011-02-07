#!/bin/sh

cd ~

echo "Removing existing files..."
rm .bashrc
rm .bash_aliases
rm .vimrc
rm .vim

echo "Linking to new ones..."

ln -s env/bashrc .bashrc
ln -s env/bash_aliases .bash_aliases
ln -s env/vimrc .vimrc
ln -s env/vim .vim


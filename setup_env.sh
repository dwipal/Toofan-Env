#!/bin/sh

cd ~

if [ -f ~/.bashrc ]; then
echo "~/.bashrc exists, delete it before continuing"
exit
fi;

ln -s Toofan-Env ~/env

echo "Removing existing files..."
rm .bashrc
rm .bash_aliases
rm .vimrc
rm .vim

echo "Linking to new ones..."

ln -s env/bashrc .bashrc
ln -s env/screenrc .screenrc
ln -s env/bash_aliases .bash_aliases
ln -s env/vimrc .vimrc
ln -s env/vim .vim

echo "Linking pickv aliases (delete the file ~/.bash_overrides if you don't want them)"
ln -s env/bash_overrides_pickv .bash_overrides

echo "Your old .bash_profile is kept, do any local changes there"

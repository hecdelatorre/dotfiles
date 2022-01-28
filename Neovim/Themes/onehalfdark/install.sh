#!/bin/bash
DIRECTORY=~/.config/nvim
VIMRC=~/.vimrc
if [ -d $DIRECTORY ]
then
    echo -e "Remove nvim content"
    rm -vr $DIRECTORY
    mkdir $DIRECTORY
    echo -e "\nCopying vimrc files"
    cp -vr init.vim plugins.vimrc shortcuts.vimrc theme.vimrc $DIRECTORY
else
    echo -e "\nCreating nvim folder"
    mkdir $DIRECTORY
    echo -e "\nCopying vimrc files" 
    cp -vr init.vim plugins.vimrc shortcuts.vimrc theme.vimrc $DIRECTORY
fi

if [ -f $VIMRC ]
then
    echo -e "\nRemoving .vimrc"
    rm -vr $VIMRC
    echo -e "\nCopying .vimrc"
    cp -vr .vimrc ~   
else
    echo -e "\nCopying .vimrc"
    cp -vr .vimrc ~
fi

echo -e "\nInstall vim-plug from https://github.com/junegunn/vim-plug"

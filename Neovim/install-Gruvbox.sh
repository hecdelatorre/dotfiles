#!/bin/bash
curl -fsSLo .init.vim https://gitlab.com/hecdelatorre/dotfiles/-/raw/main/Neovim/config/init.vim
curl -fsSLo .plugins.vimrc https://gitlab.com/hecdelatorre/dotfiles/-/raw/main/Neovim/config/plugins.vimrc
curl -fsSLo .shortcuts.vimrc https://gitlab.com/hecdelatorre/dotfiles/-/raw/main/Neovim/config/shortcuts.vimrc
curl -fsSLo .theme.vimrc https://gitlab.com/hecdelatorre/dotfiles/-/raw/main/Neovim/Themes/Gruvbox/theme.vimrc
curl -fsSLo .vimrc_tem https://gitlab.com/hecdelatorre/dotfiles/-/raw/main/Neovim/Themes/Gruvbox/.vimrc

DIRECTORY=~/.config/nvim
VIMRC=~/.vimrc
CONFIG=~/.config

if ! [ -d $CONFIG ]
then
	mkdir $CONFIG
fi

if [ -d $DIRECTORY ]
then
    echo -e "Remove nvim content"
    rm -vr $DIRECTORY
    mkdir $DIRECTORY
    echo -e "\nCopying vimrc files"
    mv -vf .init.vim $DIRECTORY/init.vim
    mv -vf .plugins.vimrc $DIRECTORY/plugins.vimrc
    mv -vf .shortcuts.vimrc $DIRECTORY/shortcuts.vimrc
    mv -vf .theme.vimrc $DIRECTORY/theme.vimrc
else
    echo -e "\nCreating nvim folder"
    mkdir $DIRECTORY
    echo -e "\nCopying vimrc files" 
    mv -vf .init.vim $DIRECTORY/init.vim
    mv -vf .plugins.vimrc $DIRECTORY/plugins.vimrc
    mv -vf .shortcuts.vimrc $DIRECTORY/shortcuts.vimrc
    mv -vf .theme.vimrc $DIRECTORY/theme.vimrc
fi

if [ -f $VIMRC ]
then
    echo -e "\nRemoving .vimrc"
    rm -vrf $VIMRC
    echo -e "\nCopying .vimrc"
    mv -vf .vimrc_tem ~/.vimrc   
else
    echo -e "\nCopying .vimrc"
    mv -vf .vimrc_tem ~/.vimrc
fi

echo -e "\nInstall vim-plug from https://github.com/junegunn/vim-plug"

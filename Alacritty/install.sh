#!/bin/bash
curl -fsSLo .alacritty.yml https://gitlab.com/hecdelatorre/dotfiles/-/raw/main/Alacritty/alacritty.yml
DIRECTORY=~/.config/alacritty
CONFIG=~/.config
if ! [ -d $CONFIG ]
then
	mkdir $CONFIG
fi
if [ -d $DIRECTORY ]
then
	echo -e "Remove alacritty"
	rm -vr $DIRECTORY
	mkdir $DIRECTORY
	echo -e "Copying alacritty.conf"
	mv -vf .alacritty.yml $DIRECTORY/alacritty.yml
else
	echo -e "Creating alacritty folder"
	mkdir $DIRECTORY
	echo -e "Copying alacritty.conf"
	mv -vf .alacritty.yml $DIRECTORY/alacritty.yml
fi

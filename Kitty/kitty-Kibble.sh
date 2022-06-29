#!/bin/bash
curl -fsSLo .kitty.conf https://gitlab.com/hecdelatorre/dotfiles/-/raw/main/Kitty/Themes/Kibble/kitty.conf
DIRECTORY=~/.config/kitty
CONFIG=~/.config
if ! [ -d $CONFIG ]
then
	mkdir $CONFIG
fi
if [ -d $DIRECTORY ]
then
	echo -e "Remove kitty"
	rm -vrf $DIRECTORY
	mkdir $DIRECTORY
	echo "Copying kitty.conf"
	mv -vf .kitty.conf $DIRECTORY/kitty.conf
else
	echo -e "Creating kitty folder"
	mkdir $DIRECTORY
	echo -e "Copying kitty.conf"
	mv -vf .kitty.conf $DIRECTORY/kitty.conf
fi

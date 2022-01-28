#!/bin/bash
DIRECTORY=~/.config/alacritty
if [ -d $DIRECTORY ]
then
	echo -e "Remove alacritty"
	rm -vr $DIRECTORY
	mkdir $DIRECTORY
	echo -e "Copying alacritty.conf"
	cp -v alacritty.yml $DIRECTORY
else
	echo -e "Creating alacritty folder"
	mkdir $DIRECTORY
	echo -e "Copying alacritty.conf"
	cp -v alacritty.yml $DIRECTORY
fi

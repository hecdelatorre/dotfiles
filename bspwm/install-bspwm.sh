#!/bin/bash
curl -fsSLo .bspwmrc https://gitlab.com/hecdelatorre/dotfiles/-/raw/main/bspwm/bspwmrc
curl -fsSLo .sxhkdrc https://gitlab.com/hecdelatorre/dotfiles/-/raw/main/bspwm/sxhkdrc
curl -fsSLo .config.ini https://gitlab.com/hecdelatorre/dotfiles/-/raw/main/bspwm/config.ini
curl -fsSLo .launch.sh https://gitlab.com/hecdelatorre/dotfiles/-/raw/main/bspwm/launch.sh

DIRECTORY_BSPWM=~/.config/bspwm
DIRECTORY_SXHKD=~/.config/sxhkd
DIRECTORY_POLYBAR=~/.config/polybar
CONFIG=~/.config

if ! [ -d $CONFIG ]
then
	      mkdir $CONFIG
fi

if !  [ -d $DIRECTORY_BSPWM ]
then
	      mkdir $DIRECTORY_BSPWM
        mv -vf .bspwmrc $DIRECTORY_BSPWM/bspwmrc
  	    chmod +x $HOME/.config/bspwm/bspwmrc
else
	      rm -vrf $DIRECTORY_BSPWM
        mkdir $DIRECTORY_BSPWM
        mv -vf .bspwmrc $DIRECTORY_BSPWM/bspwmrc
        chmod +x $HOME/.config/bspwm/bspwmrc
fi

if ! [ -d $DIRECTORY_SXHKD  ]
then
       	mkdir $DIRECTORY_SXHKD
       	mv -vf .sxhkdrc $DIRECTORY_SXHKD/sxhkdrc
else
	rm -vrf $DIRECTORY_SXHKD
	mkdir $DIRECTORY_SXHKD
       	mv -vf .sxhkdrc $DIRECTORY_SXHKD/sxhkdrc
fi

if ! [ -d $DIRECTORY_POLYBAR  ]
then
       	mkdir $DIRECTORY_POLYBAR
        mv -vf .config.ini $DIRECTORY_POLYBAR/config.ini
        mv -vf .launch.sh $DIRECTORY_POLYBAR/launch.sh
	      chmod +x $HOME/.config/polybar/launch.sh
else
       	rm -vrf $DIRECTORY_POLYBAR
       	mkdir $DIRECTORY_POLYBAR
        mv -vf .config.ini $DIRECTORY_POLYBAR/config.ini
        mv -vf .launch.sh $DIRECTORY_POLYBAR/launch.sh
        chmod +x $HOME/.config/polybar/launch.sh
fi
cp -vf /etc/X11/xinit/xinitrc ~/.xinitrc
echo 'sxhkd &' | tee -a ~/.xinitrc
echo 'exec bspwm' | tee -a ~/.xinitrc

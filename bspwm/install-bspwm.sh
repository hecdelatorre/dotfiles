#!/bin/bash
#curl -fsSLo .kitty.conf https://gitlab.com/hecdelatorre/dotfiles/-/raw/main/Kitty/Themes/Kibble/kitty.conf

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
        cp -vrf bspwmrc $DIRECTORY_BSPWM/bspwmrc
  	chmod +x $HOME/.config/bspwm/bspwmrc
else
	rm -vrf $DIRECTORY_BSPWM
        mkdir $DIRECTORY_BSPWM
        cp -vrf bspwmrc $DIRECTORY_BSPWM/bspwmrc
        chmod +x $HOME/.config/bspwm/bspwmrc

fi

if ! [ -d $DIRECTORY_SXHKD  ]
then
       	mkdir $DIRECTORY_SXHKD
       	cp -vf sxhkdrc $DIRECTORY_SXHKD
else
	rm -vrf $DIRECTORY_SXHKD
	mkdir $DIRECTORY_SXHKD
       	cp -vf sxhkdrc $DIRECTORY_SXHKD
fi

if ! [ -d $DIRECTORY_POLYBAR  ]
then
       	mkdir $DIRECTORY_POLYBAR
       	cp -vrf config.ini launch.sh $DIRECTORY_POLYBAR
	chmod +x $HOME/.config/polybar/launch.sh
else
       	rm -vrf $DIRECTORY_POLYBAR
       	mkdir $DIRECTORY_POLYBAR
	cp -vrf	config.ini launch.sh $DIRECTORY_POLYBAR
        chmod +x $HOME/.config/polybar/launch.sh
fi
cp -vf /etc/X11/xinit/xinitrc ~/.xinitrc
echo 'dbus-run-session bspwm' | tee -a ~/.xinitrc

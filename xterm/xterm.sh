#!/bin/bash
echo 'IBM Plex typeface required'
curl -fsSLo Xresources https://gitlab.com/hecdelatorre/dotfiles/-/raw/main/xterm/.Xresources
mv -vf Xresources ~/.Xresources
xrdb -merge ~/.Xresources
echo 'xterm is configured'

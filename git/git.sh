#!/bin/bash
echo 'Copy configuration'
curl -fsSLo .gitconfig_tem https://gitlab.com/hecdelatorre/dotfiles/-/raw/main/git/.gitconfig
mv -f .gitconfig_tem ~/.gitconfig
cat ~/.gitconfig
echo 'Please edit your file with your parameters -> # nano ~/.gitconfig'

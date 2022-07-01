#!/bin/bash
sudo pacman -S base-devel git --noconfirm --needed
git clone https://aur.archlinux.org/visual-studio-code-bin.git vscode
cd vscode && makepkg -si && cd .. && rm -vrf vscode

#!/bin/bash
sudo pacman -S base-devel git --noconfirm --needed
git clone https://aur.archlinux.org/yay.git
cd yay && makepkg -si && cd .. && rm -vrf yay

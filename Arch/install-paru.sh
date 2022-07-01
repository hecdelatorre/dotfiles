#!/bin/bash
sudo pacman -S base-devel git --noconfirm --needed
git clone https://aur.archlinux.org/paru.git
cd paru && makepkg -si && cd .. && rm -vrf paru

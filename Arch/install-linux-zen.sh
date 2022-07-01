#!/bin/bash
sudo pacman -S base-devel git --noconfirm --needed
git clone https://aur.archlinux.org/update-grub.git
cd update-grub && makepkg -si
sudo pacman -S linux-zen linux-zen-headers --noconfirm --needed	
cd .. && rm -vrf update-grub
echo 'Execute the following commands'
echo '# sudo su'
echo '# update-grub'

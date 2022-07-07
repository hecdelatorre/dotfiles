#!/bin/bash
sudo pacman -S base-devel git --noconfirm --needed
sudo pacman -S adobe-source-code-pro-fonts noto-fonts ttf-baekmuk ttf-cascadia-code ttf-fira-code ttf-fira-mono ttf-fira-sans ttf-font-awesome ttf-hanazono ttf-ibm-plex ttf-opensans ttf-roboto ttf-roboto-mono ttf-ubuntu-font-family --noconfirm --needed
git clone https://aur.archlinux.org/atkinson-hyperlegible-fonts.git
git clone https://aur.archlinux.org/montserrat-font.git
git clone https://aur.archlinux.org/ttf-ms-win11.git
git clone https://aur.archlinux.org/ttf-poppins.git
git clone https://aur.archlinux.org/ttf-rubik.git 
git clone https://aur.archlinux.org/ttf-spacemono.git
git clone https://aur.archlinux.org/nerd-fonts-git.git
cd atkinson-hyperlegible-fonts && makepkg -si --noconfirm --needed && cd ..
cd montserrat-font && makepkg -si --noconfirm --needed && cd ..
cd ttf-ms-win11 && makepkg -si --noconfirm --needed && cd ..
cd ttf-poppins && makepkg -si --noconfirm --needed && cd ..
cd ttf-rubik && makepkg -si --noconfirm --needed && cd ..
cd ttf-spacemono && makepkg -si --noconfirm --needed && cd ..
cd nerd-fonts-git && makepkg -si --noconfirm --needed && cd ..
rm -vrf atkinson-hyperlegible-fonts montserrat-font nerd-fonts-git ttf-ms-win11 ttf-poppins ttf-rubik ttf-spacemono

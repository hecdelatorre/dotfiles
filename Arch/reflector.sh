#!/bin/bash
sudo pacman -Sy
sudo pacman -S curl reflector --noconfirm --needed
sudo reflector --verbose --latest 10 --country Mexico,"United States",Canada --age 12 --protocol https --sort rate --save /etc/pacman.d/mirrorlist
curl -fsSLo .reflector.service https://gitlab.com/hecdelatorre/dotfiles/-/raw/main/Arch/reflector.service
sudo mv -vf .reflector.service /etc/systemd/system/reflector.service
sudo systemctl enable reflector.service && sudo systemctl is-enabled reflector.service

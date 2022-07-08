#!/bin/bash
echo -e "\n Add RPM Fusion provides\n"
sudo dnf in https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm fedora-workstation-repositories -y
sudo dnf check-update
echo -e "\n Install Apps\n"
sudo dnf in aria2 arj audacious cabextract deluge discord git glances gnome-disk-utility gvfs-smb kitty libreoffice-calc libreoffice-draw libreoffice-gtk3 libreoffice-impress libreoffice-langpack-es libreoffice-writer lzip lzop mpv mpv-libs neofetch neovim numix* openvpn nodejs npm p7zip rofi sharutils unace unrar unrar zsh -y

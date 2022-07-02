#!/bin/bash
echo -e "\n Add RPM Fusion provides\n"
sudo dnf in https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm fedora-workstation-repositories -y
echo -e "\n Update\n"
sudo dnf up -y
sudo dnf check-update
echo -e "\n Install Apps\n"
sudo dnf in google-rubik-fonts google-roboto* adobe-source-code-pro-fonts aria2 arj audacious cabextract cascadia-code-fonts clang-devel deluge discord filezilla fira-code-fonts git glances gnome-disk-utility gvfs-smb httpd java-11-openjdk java-11-openjdk-devel kitty libreoffice-calc libreoffice-draw libreoffice-gtk3 libreoffice-impress libreoffice-langpack-es libreoffice-writer lzip lzop mariadb mariadb-server mod_ssl mozilla-fira* mpv mpv-libs neofetch neovim nodejs npm numix* openvpn p7zip php php-common php-gd php-json php-mbstring php-mysqlnd php-xml phpmyadmin python3 python3-pip python3-tkinter rofi sharutils unace unrar unrar zsh -y

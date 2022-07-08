#!/bin/bash
echo -e "\n Add RPM Fusion provides\n"
sudo dnf in https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm fedora-workstation-repositories -y
sudo dnf check-update
echo -e "\n Install Apps\n"
sudo dnf in clang-devel httpd java-11-openjdk java-11-openjdk-devel filezilla git mariadb mariadb-server mod_ssl nodejs npm php php-common php-gd php-json php-mbstring php-mysqlnd php-xml phpmyadmin python3 python3-pip python3-tkinter -y

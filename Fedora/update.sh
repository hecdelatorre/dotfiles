#!/bin/bash
echo -e '\n Add RPM Fusion provides\n'
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm fedora-workstation-repositories -y
echo -e '\n Check update'
sudo dnf check-update
echo -e '\n Update\n'
sudo dnf upgrade -y

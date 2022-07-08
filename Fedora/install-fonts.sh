#!/bin/bash
echo -e "\n Add RPM Fusion provides\n"
sudo dnf in https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm fedora-workstation-repositories -y
echo -e "\n Install Fonts\n"
sudo dnf in adobe-source-code-pro-fonts cascadia-code-fonts fira-code-fonts google-roboto* google-rubik-fonts mozilla-fira* -y

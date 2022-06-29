# Actualizar sistema
```sh
sudo apt update && sudo apt upgrade -y
```
# Terminals
```sh
sudo apt install kitty
```
```sh
sudo apt install tilix
```
# Font
```sh
sudo apt install fonts-firacode
```
# Multimedia
```sh
sudo apt install audacious
```
```sh
sudo apt install smplayer
```
```sh
sudo apt install vlc
```
```sh
sudo apt install nomacs
```

# Bittorrent clients
```sh
sudo apt install deluge
```
```sh
sudo apt install transmission
```
```sh
sudo apt install qbittorrent
```
# Libreoffice
```sh
sudo apt install libreoffice-writer libreoffice-impress libreoffice-draw libreoffice-calc libreoffice-l10n-es libreoffice-gtk3
```
# My essential apps
```sh
sudo apt install tree unace p7zip p7zip-full lzip lhasa arj sharutils mpack lzma lzop cabextract nmap brasero deluge gparted w3m filezilla aircrack-ng crunch cups-pdf gnome-disk-utility g++ gcc build-essential clang gcp python3 git openvpn
```
# Remove unnecessary packages
```sh
sudo dpkg --configure -a &&
sudo apt-get autoremove -y &&
sudo apt --fix-broken install &&
sudo update-apt-xapian-index
```
# Other apps
```sh
sudo apt install blueman
```
```sh
sudo apt install engrampa
```
```sh
sudo apt install blueman
```
```sh
sudo apt install mousepad
```
```sh
sudo apt install maxima
```
```sh
sudo apt install wxmaxima
```
# Installation script
```sh
sudo sh -c "$(curl -fsSL https://gitlab.com/hecdelatorre/dotfiles/-/raw/main/Debian/debian.sh)"
```

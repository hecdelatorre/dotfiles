# Actualizar sistema
```sh
sudo pacman -Syu --noconfirm
```
# Enable colors for pacman
```sh
sudo nano /etc/pacman.conf
```
Add the following lines
```
  Color
  ILoveCandy
```
# My essential apps
```sh
sudo pacman -S base-devel git kitty zsh smplayer gnome-disk-utility openvpn wget smbnetfs gvfs-smb ntp audacious unace p7zip unrar lzip lhasa arj sharutils lzop cabextract deluge-gtk evince engrampa xclip pulseaudio rofi --noconfirm --needed
```
# Applications for development
```sh
sudo pacman -S python3 python-pip tk nodejs npm neovim --noconfirm --needed
```
# Install Fonts
```sh
sudo pacman -S ttf-fira-code ttf-fira-mono ttf-fira-sans adobe-source-code-pro-fonts cantarell-fonts noto-fonts ttf-cascadia-code ttf-font-awesome ttf-ubuntu-font-family ttf-roboto --noconfirm --needed
```
# Install libreoffice
```sh
sudo pacman -S libreoffice-still libreoffice-still-es hunspell hunspell-es_mx hunspell-es_any hyphen hyphen-es mythes-es languagetool --noconfirm --needed
```
# Install yay
```sh
sudo pacman -S base-devel git --noconfirm --needed
git clone https://aur.archlinux.org/yay.git
cd yay && makepkg -si
```
# Install paru
```sh
sudo pacman -S base-devel git --noconfirm --needed
git clone https://aur.archlinux.org/paru.git
cd paru && makepkg -si
```
# Install pamac to activate arch users repositories
```sh
sudo pacman -S base-devel git --noconfirm --needed
git clone https://aur.archlinux.org/pamac-aur.git pamac
cd pamac && makepkg -si
```
# Visual Studio through arch user repositories
```sh
sudo pacman -S base-devel git --noconfirm --needed
git clone https://aur.archlinux.org/visual-studio-code-bin.git vscode
cd vscode && makepkg -si
```
# Install linux zen
```sh
sudo pacman -S base-devel git --noconfirm --needed
git clone https://aur.archlinux.org/update-grub.git
cd update-grub && makepkg -si
sudo pacman -S linux-zen linux-zen-headers --noconfirm --needed
```
```sh
su
```
```sh
update-grub
```
# Reflector
## Install
```sh
sudo pacman -S reflector --noconfirm --needed
```
## Use
```sh
sudo reflector --verbose --latest 10 --country Mexico,"United States",Canada --age 12 --protocol https --sort rate --save /etc/pacman.d/mirrorlist
```
## Create service
```sh
echo '[Unit]                                                           
Description=Update the pacman mirror list
Wants=network-online.target
After=network-online.target

[Service]
Type=oneshot
ExecStart=/usr/bin/reflector --latest 10 --country Mexico,"United States",Canada --age 12 --protocol https --sort rate --save /etc/pacman.d/mirrorlist 

[Install]
RequiredBy=multi-user.target' > reflector.service && sudo mv -vf reflector.service /etc/systemd/system
```
```sh
sudo systemctl enable reflector.service && sudo systemctl is-enabled reflector.service
```
# Installation script
```sh
sudo sh -c "$(curl -fsSL https://gitlab.com/Hec98/dotfiles/-/raw/main/Arch/arch.sh)"
```

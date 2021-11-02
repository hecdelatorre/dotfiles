# Actualizar sistema
```sh
sudo pacman -Syu --noconfirm
```
# Install pamac to activate arch users repositories
```sh
sudo pacman -S pamac --noconfirm
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
sudo pacman -S base-devel git kitty zsh smplayer gnome-disk-utility openvpn wget smbnetfs gvfs-smb ntp audacious unace p7zip unrar lzip lhasa arj sharutils lzop cabextract deluge-gtk evince engrampa xclip pulseaudio rofi --noconfirm
```
# Applications for development
```sh
sudo pacman -S python3 python-pip tk nodejs npm neovim --noconfirm
```
# Install Fonts
```sh
sudo pacman -S ttf-fira-code ttf-fira-mono ttf-fira-sans adobe-source-code-pro-fonts cantarell-fonts noto-fonts ttf-cascadia-code ttf-font-awesome ttf-ubuntu-font-family ttf-roboto --noconfirm
```
# Install yay
```sh
sudo pacman -S base-devel git --noconfirm
git clone https://aur.archlinux.org/yay.git
cd yay && makepkg -si
```
# Visual Studio through arch user repositories
```sh
git clone https://aur.archlinux.org/visual-studio-code-bin.git vscode
cd vscode && makepkg -si
```
# Installation script
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Hec98/dotfiles/main/Arch/arch.sh)"
```
# Reflector
## Install
```
sudo pacman -S reflector
```
## Use
```
sudo reflector --verbose --latest 10 --country Mexico,"United States",Canada --age 12 --protocol https --sort rate --save /etc/pacman.d/mirrorlist
```
## Create service
```
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
```
sudo systemctl enable reflector.service && sudo systemctl is-enabled reflector.service
```

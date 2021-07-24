# I have tested these instructions on [Artix Linux](https://artixlinux.org/)
# Actualizar sistema
```
sudo pacman -Syyu --noconfirm
```
# Install pamac to activate arch users repositories
```
sudo pacman -S pamac --noconfirm
```
# Enable colors for pacman
```
sudo nano /etc/pacman.conf
```
Add the following lines
```
  Color
  ILoveCandy
```
# My essential apps
```
sudo pacman -S base-devel git kitty zsh smplayer gnome-disk-utility openvpn wget smbnetfs gvfs-smb ntp audacious unace p7zip unrar lzip lhasa arj sharutils lzop cabextract deluge-gtk evince engrampa xclip pulseaudio rofi --noconfirm
```
# Applications for development
```
sudo pacman -S python3 python-pip nodejs npm neovim   --noconfirm
```
# Install Fonts
```
sudo pacman -S ttf-fira-code ttf-fira-mono ttf-fira-sans
```
# Install yay
```
git clone https://aur.archlinux.org/yay.git &&
cd yay &&
makepkg -si
```
# Visual Studio through arch user repositories
```
git clone https://aur.archlinux.org/visual-studio-code-bin.git
```

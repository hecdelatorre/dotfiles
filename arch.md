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
sudo pacman -S base-devel git smplayer gnome-disk-utility python3 engrampa openvpn wget smbnetfs gvfs-smb ntp audacious unace p7zip unrar lzip lhasa arj sharutils lzop cabextract nomacs deluge-gtk evince --noconfirm
```
# Install yay
```
git clone https://aur.archlinux.org/yay.git &&
cd yay &&
makepkg -si
```
# Visual Studio through arch user repositories
```
git clone https://aur.archlinux.org/yay.git
```
# Install Fonts
```
sudo pacman -S ttf-fira-code ttf-fira-mono ttf-fira-sans
```

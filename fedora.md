# Check updates
```
sudo dnf check-update
```
```
sudo dnf upgrade
```
# Add more repositories
```
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
```
```
sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
```
```
sudo dnf install fedora-workstation-repositories
```
# My essential apps
```
sudo dnf install neofetch gnome-disk-utility gvfs-smb openvpn git unace p7zip unrar lzip arj sharutils lzop cabextract glances unrar discord 
```
# Terminals
```
sudo dnf install kitty
```
```
sudo dnf install tilix
```
```
sudo dnf install alacritty
```
# Themes and fonts
```
sudo dnf install fira-code-fonts mozilla-fira* adobe-source-code-pro-fonts cascadia-code-fonts numix*
```
# Multimedia
```
sudo dnf install audacious
```
```
sudo dnf install mpv mpv-libs
```
```
sudo dnf install smplayer
```
```
sudo dnf install vlc
```
# Bittorrent clients
```
sudo dnf install deluge
```
```
sudo dnf install transmission
```
```
sudo dnf install qbittorrent
```
# Applications for development
```
sudo dnf install filezilla httpd mod_ssl mariadb-server mariadb php php-common php-mysqlnd php-xml php-json php-gd php-mbstring phpmyadmin java-11-openjdk java-11-openjdk-devel python3 git
```
# Visual Studio Code
```
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
```
```
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
```
```
sudo dnf check-update
```
```
sudo dnf install code
```
# Text editors and development environments
```
sudo dnf install neovim 
```
```
sudo dnf install eclipse 
```
```
sudo dnf install codeblocks
```
# libreoffice and language packs
```
sudo dnf search libreoffice-langpack-
```
```
sudo dnf install libreoffice libreoffice-langpack-es
```
# Anydesk
```
cat > /etc/yum.repos.d/AnyDesk-Fedora.repo << "EOF" 
[anydesk]
name=AnyDesk Fedora - stable
baseurl=http://rpm.anydesk.com/fedora/$basearch/
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://keys.anydesk.com/repos/RPM-GPG-KEY
EOF
```
```
sudo dnf --releasever=32  install pangox-compat.x86_64
```
```
sudo dnf install anydesk
```
# Install most of the above software with one instruction
```
sudo dnf install kitty neofetch gnome-disk-utility deluge filezilla libreoffice libreoffice-langpack-es gvfs-smb audacious openvpn python3 git unace p7zip unrar lzip arj sharutils lzop cabextract httpd mod_ssl mariadb-server mariadb php php-common php-mysqlnd php-xml php-json php-gd php-mbstring phpmyadmin neovim glances unrar java-11-openjdk java-11-openjdk-devel mpv mpv-libs discord eclipse fira-code-fonts mozilla-fira* adobe-source-code-pro-fonts cascadia-code-fonts numix*
```
# Install Fonts
```
sudo pacman -S ttf-fira-code ttf-fira-mono ttf-fira-sans
```

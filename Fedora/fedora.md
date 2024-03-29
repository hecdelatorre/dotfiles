# Check updates

```sh
sudo dnf check-update
```

```sh
sudo dnf upgrade
```

# Scripts

## Updating the system

```sh
sudo sh -c "$(curl -fsSL https://gitlab.com/hecdelatorre/dotfiles/-/raw/main/Fedora/update.sh)"
```

## Installation of necessary utilities

```sh
sudo sh -c "$(curl -fsSL https://gitlab.com/hecdelatorre/dotfiles/-/raw/main/Fedora/fedora.sh)"
```

## Installation of dev packages

```sh
sudo sh -c "$(curl -fsSL https://gitlab.com/hecdelatorre/dotfiles/-/raw/main/Fedora/install-dev-apps.sh)"
```

## Installation of fonts

```sh
sudo sh -c "$(curl -fsSL https://gitlab.com/hecdelatorre/dotfiles/-/raw/main/Fedora/install-fonts.sh)"
```

## [MongoDB](https://www.mongodb.com/docs/manual/tutorial/install-mongodb-on-red-hat/) Installation

```sh
sudo sh -c "$(curl -fsSL https://gitlab.com/hecdelatorre/dotfiles/-/raw/main/Fedora/MongoDB.sh)"
```

## Kernel [liquorix](https://copr.fedorainfracloud.org/coprs/rmnscnce/kernel-lqx/) Installation

```sh
sudo sh -c "$(curl -fsSL https://gitlab.com/hecdelatorre/dotfiles/-/raw/main/Fedora/install-kernel-lxq.sh)"
```

## Kernel [Xanmod](https://copr.fedorainfracloud.org/coprs/rmnscnce/kernel-xanmod/) lts Installation

```sh
sudo sh -c "$(curl -fsSL https://gitlab.com/hecdelatorre/dotfiles/-/raw/main/Fedora/install-kernel-xanmod-lts.sh)"
```

## Kernel [Xanmod](https://copr.fedorainfracloud.org/coprs/rmnscnce/kernel-xanmod/) edge Installation

```sh
sudo sh -c "$(curl -fsSL https://gitlab.com/hecdelatorre/dotfiles/-/raw/main/Fedora/install-kernel-xanmod-edge.sh)"
```

# Add more repositories

```sh
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
```

```sh
sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
```

```sh
sudo dnf install fedora-workstation-repositories
```

# My essential apps

```sh
sudo dnf install neofetch gnome-disk-utility gvfs-smb openvpn git unace p7zip unrar lzip arj sharutils lzop cabextract glances unrar discord 
```

# Terminals

```sh
sudo dnf install kitty
```

```sh
sudo dnf install tilix
```

```sh
sudo dnf install alacritty
```

# Themes and fonts

```sh
sudo dnf install fira-code-fonts mozilla-fira* adobe-source-code-pro-fonts cascadia-code-fonts numix* google-rubik-fonts google-roboto*
```

# Multimedia

```sh
sudo dnf install audacious
```

```sh
sudo dnf install mpv mpv-libs
```

```sh
sudo dnf install smplayer
```

```sh
sudo dnf install vlc
```

# Bittorrent clients

```sh
sudo dnf install deluge
```

```sh
sudo dnf install transmission
```

```sh
sudo dnf install qbittorrent
```

# Applications for development

```sh
sudo dnf install filezilla httpd mod_ssl mariadb-server mariadb php php-common php-mysqlnd php-xml php-json php-gd php-mbstring phpmyadmin java-11-openjdk java-11-openjdk-devel python3 git clang-devel
```

# Visual Studio Code

```sh
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
```

```sh
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
```

```sh
sudo dnf check-update
```

```sh
sudo dnf install code
```

# Text editors and development environments

```sh
sudo dnf install neovim 
```

```sh
sudo dnf install eclipse 
```

```sh
sudo dnf install codeblocks
```

# libreoffice and language packs

```sh
sudo dnf search libreoffice-langpack-
```

```sh
sudo dnf install libreoffice libreoffice-langpack-es
```

# Anydesk

```sh
cat > /etc/yum.repos.d/AnyDesk-Fedora.repo << "EOF" 
[anydesk]
name=AnyDesk Fedora - stable
baseurl=http://rpm.anydesk.com/fedora/$basearch/
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://keys.anydesk.com/repos/RPM-GPG-KEY
EOF
```

```sh
sudo dnf --releasever=32  install pangox-compat.x86_64
```

```sh
sudo dnf install anydesk
```

# Install mongodb

## Add repository

```sh
echo '[mongodb-org-5.0]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/redhat/8Server/mongodb-org/5.0/x86_64/
gpgcheck=1
enabled=1
gpgkey=https://www.mongodb.org/static/pgp/server-5.0.asc' > mongodb-org-5.0.repo && sudo mv -vf mongodb-org-5.0.repo /etc/yum.repos.d/
```

## Install

```sh
sudo dnf install mongodb-org-server mongodb-org-shell mongodb-mongosh
```

## Start service

```sh
sudo systemctl start mongod.service && sudo systemctl is-active mongod.service
```

## Enable service

```sh
sudo systemctl enable mongod.service && sudo systemctl is-enabled mongod.service
```

# Improve repository download

```sh
echo 'fastesmirror=1' | sudo tee -a /etc/dnf/dnf.conf
echo 'max_parallel_downloads=10' | sudo tee -a /etc/dnf/dnf.conf
echo 'installonly_limit=2' | sudo tee -a /etc/dnf/dnf.conf
```

# Remove old kernel´s

```sh
dnf remove $(dnf repoquery --installonly --latest-limit=-2 -q)
```

# Install most of the above software with one instruction

```sh
sudo dnf install kitty neofetch gnome-disk-utility deluge filezilla libreoffice libreoffice-langpack-es gvfs-smb audacious openvpn python3 git unace p7zip unrar lzip arj sharutils lzop cabextract httpd mod_ssl mariadb-server mariadb php php-common php-mysqlnd php-xml php-json php-gd php-mbstring phpmyadmin neovim glances unrar java-11-openjdk java-11-openjdk-devel clang-devel mpv mpv-libs discord eclipse fira-code-fonts mozilla-fira* adobe-source-code-pro-fonts cascadia-code-fonts numix* google-rubik-fonts google-roboto*
```

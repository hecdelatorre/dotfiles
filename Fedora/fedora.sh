echo "Add repositories"
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm -y
sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
sudo dnf install fedora-workstation-repositories -y
echo "Update"
sudo dnf upgrade -y
sudo dnf check-update
echo "Install Apps"
sudo dnf install gnome-disk-utility gvfs-smb openvpn git unace p7zip unrar lzip arj sharutils lzop cabextract glances unrar -y
sudo dnf install kitty neofetch neovim zsh rofi -y
sudo dnf install fira-code-fonts mozilla-fira* adobe-source-code-pro-fonts cascadia-code-fonts numix* -y
sudo dnf install mpv mpv-libs audacious deluge aria2 discord -y
sudo dnf install filezilla httpd mod_ssl mariadb-server mariadb php php-common php-mysqlnd php-xml php-json php-gd php-mbstring phpmyadmin java-11-openjdk java-11-openjdk-devel python3 python3-pip python3-tkinter nodejs npm git clang-devel -y
sudo dnf install libreoffice-calc libreoffice-draw libreoffice-gtk3 libreoffice-impress libreoffice-writer libreoffice-langpack-es -y

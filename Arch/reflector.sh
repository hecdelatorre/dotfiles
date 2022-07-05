#!/bin/bash
sudo pacman -Sy
sudo pacman -S reflector --noconfirm --needed
sudo reflector --verbose --latest 10 --country Mexico,"United States",Canada --age 12 --protocol https --sort rate --save /etc/pacman.d/mirrorlist
echo '[Unit]                                                           
Description=Update the pacman mirror list
Wants=network-online.target
After=network-online.target

[Service]
Type=oneshot
ExecStart=/usr/bin/reflector --latest 10 --country Mexico,"United States",Canada --age 12 --protocol https --sort rate --save /etc/pacman.d/mirrorlist 

[Install]
RequiredBy=multi-user.target' > reflector.service && sudo mv -vf reflector.service /etc/systemd/system
sudo systemctl enable reflector.service && sudo systemctl is-enabled reflector.service

#!/bin/bash
echo -e '\n Add repository\n'
curl -fsSLo .mongodb-org-5.0.repo https://gitlab.com/hecdelatorre/dotfiles/-/raw/main/Fedora/mongodb-org-5.0.repo
sudo mv -f .mongodb-org-5.0.repo /etc/yum.repos.d/mongodb-org-5.0.repo
cat /etc/yum.repos.d/mongodb-org-5.0.repo
echo -e '\n Installation\n'
sudo dnf in mongodb-org-server mongodb-org-shell mongodb-mongosh -y
echo -e '\n Start service\n'
sudo systemctl start mongod.service && sudo systemctl is-active mongod.service
echo -e '\n Enable service\n'
sudo systemctl enable mongod.service && sudo systemctl is-enabled mongod.service

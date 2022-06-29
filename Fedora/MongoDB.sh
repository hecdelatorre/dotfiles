#!/bin/bash
echo 'Add repository'
echo '[mongodb-org-5.0]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/redhat/8Server/mongodb-org/5.0/x86_64/
gpgcheck=1
enabled=1
gpgkey=https://www.mongodb.org/static/pgp/server-5.0.asc' > mongodb-org-5.0.repo && sudo mv -vf mongodb-org-5.0.repo /etc/yum.repos.d/
echo 'Installation'
sudo dnf in mongodb-org-server mongodb-org-shell mongodb-mongosh -y
echo 'Start service'
sudo systemctl start mongod.service && sudo systemctl is-active mongod.service
echo 'Enable service'
sudo systemctl enable mongod.service && sudo systemctl is-enabled mongod.service

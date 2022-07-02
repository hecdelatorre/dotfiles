#!/bin/bash
echo -e '\n Add repository\n'
echo '[mongodb-org-5.0]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/redhat/8Server/mongodb-org/5.0/x86_64/
gpgcheck=1
enabled=1
gpgkey=https://www.mongodb.org/static/pgp/server-5.0.asc' > mongodb-org-5.0.repo && sudo mv -f mongodb-org-5.0.repo /etc/yum.repos.d/
cat /etc/yum.repos.d/mongodb-org-5.0.repo
echo -e '\n Installation\n'
sudo dnf in mongodb-org-server mongodb-org-shell mongodb-mongosh -y
echo -e '\n Start service\n'
sudo systemctl start mongod.service && sudo systemctl is-active mongod.service
echo -e '\n Enable service\n'
sudo systemctl enable mongod.service && sudo systemctl is-enabled mongod.service

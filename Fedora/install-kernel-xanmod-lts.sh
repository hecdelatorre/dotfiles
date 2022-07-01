#!/bin/bash
sudo dnf copr enable rmnscnce/kernel-xanmod -y
sudo dnf in kernel-xanmod-lts -y
echo 'Web Site https://copr.fedorainfracloud.org/coprs/rmnscnce/kernel-xanmod/'

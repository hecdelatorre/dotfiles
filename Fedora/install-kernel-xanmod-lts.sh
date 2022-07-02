#!/bin/bash
sudo dnf copr enable rmnscnce/kernel-xanmod -y
sudo dnf in kernel-xanmod-lts -y
echo -e '\nWeb Site -> https://copr.fedorainfracloud.org/coprs/rmnscnce/kernel-xanmod/'

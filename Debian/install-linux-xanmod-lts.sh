#!/bin/bash
sudo apt update && sudo apt install curl -y
curl -fsSL https://dl.xanmod.org/gpg.key | sudo tee /usr/share/keyrings/xanmod.key
echo 'deb [signed-by=/usr/share/keyrings/xanmod.key] http://deb.xanmod.org releases main' | sudo tee /etc/apt/sources.list.d/xanmod-kernel.list
sudo apt update && sudo apt install linux-xanmod-lts -y

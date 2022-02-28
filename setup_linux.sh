#!/bin/bash

echo "Setting up this hardware with relevant configurations"


# Install relevant packages
sudo apt install -y python3 \
    python3-pip \ 
    xsel

# Setup any bash aliases
HTTPY="alias httpy='ip a | grep inet | grep -v inet6 && python3 -m http.server 80'"
echo HTTPY >> ~/.bashrc
echo HTTPY >> ~/.zshrc

XSEL="alias xsel='xsel -i -b -o'"
sudo echo XSEL >> /root/.bashrc
sudo echo XSEL >> /root/.zshrc


#!/bin/bash
sudo ln -s ~/.vim /root 2>/dev/null
sudo ln -s ~/.vimrc /root/ 2>/dev/null
sudo ln -s ~/.bashrc /root/ 2>/dev/null
sudo mkdir -p /root/.config
sudo ln -s ~/.config/base16-shell/ /root/.config/base16-shell

#!/bin/bash
mkdir -p ~/.config/kitty/
cp ./kitty-theme.conf ~/.config/kitty/theme.conf
echo "include ./theme.conf" >> ~/.config/kitty/theme.conf

echo "#################################################"
echo "###                                           ###"
echo "###  Reopen terminal for the new colorscheme  ###"
echo "###                                           ###"
echo "#################################################"


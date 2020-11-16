#!/bin/bash

full_path=$(realpath $0)
dir_path=$(dirname $full_path)

echo "Copy vim plugins config files"
cp $dir_path/vimrc-plugins        ~/.vimrc-plugins
cp $dir_path/ycm_extra_conf.py    ~/.vim/.ycm_extra_conf.py
cp $dir_path/clang-format.py      ~/.vim/
cp $dir_path/clang-format-rules   ~/.clang-format

echo "Installing Vundle"
if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

echo "Installing plugins"
vim -c PluginInstall -c qa


sudo apt-get install -y cmake clang clang-format clang-tidy python3.8-dev python3.8

mkdir -p ~/.config/kitty/
cp $dir_path/kitty-theme.conf ~/.config/kitty/theme.conf
echo "include in kitty theme.conf" >> ~/.config/kitty/kitty.conf

echo "#################################################"
echo "###                                           ###"
echo "###  Reopen terminal for the new colorscheme  ###"
echo "###                                           ###"
echo "#################################################"

cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer

sudo ln -s ~/.vim    /root/ 2>/dev/null
sudo ln -s ~/.vimrc  /root/ 2>/dev/null 
sudo ln -s ~/.bashrc /root/ 2>/dev/null

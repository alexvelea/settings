#!/bin/bash
 
full_path=$(realpath $0)
dir_path=$(dirname $full_path)

sed "s|HOMESED|$HOME|g" $dir_path/bashrc >~/.bashrc
sed "s|HOMESED|$HOME|g" $dir_path/vimrc  >~/.vimrc

# install vim
if ! which vim >/dev/null ; then
    sudo apt-get install -y vim
fi

mkdir -p ~/.vim/colors
cp $dir_path/darcula.vim ~/.vim/colors/darcula.vim

source ~/.bashrc

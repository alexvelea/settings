#!/bin/bash
 
full_path=$(realpath $0)
dir_path=$(dirname $full_path)

sed "s|HOMESED|$HOME|g" $dir_path/bashrc >~/.bashrc
sed "s|HOMESED|$HOME|g" $dir_path/vimrc  >~/.vimrc

cat $dir_path/../id_rsa.pub >> ~/.ssh/authorized_keys

# install vim
if ! which vim >/dev/null ; then
    sudo apt-get install -y vim
fi

mkdir -p ~/.vim/colors
cp $dir_path/darcula.vim ~/.vim/colors/darcula.vim

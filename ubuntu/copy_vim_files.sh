#!/bin/bash
if [ ! -f ~/.vimrc ]; then
    cp vimrc ~/.vimrc
else
    if cmp --silent ~/.vimrc vimrc ; then
        read -p "Do you want to override current .vimrc file? (y, n) " -n 1 -r
        echo    # (optional) move to a new line
        if [[ $REPLY =~ ^[Yy]$ ]]; then
            cp vimrc ~/.vimrc
        fi
    fi
fi

if [ ! -f ~/.vim/.ycm_extra_conf.py ]; then
    cp ../ycm_extra_conf.py ~/.vim/.ycm_extra_conf.py
else
    if cmp --silent ~/.vim/.ycm_extra_conf.py ../ycm_extra_conf ; then
        read -p "Do you want to override current .vim/.ycm_extra_conf.py file? (y, n) " -n 1 -r
        echo    # (optional) move to a new line
        if [[ $REPLY =~ ^[Yy]$ ]]; then
            cp ../ycm_extra_conf.py ~/.vim/.ycm_extra_conf.py
        fi
    fi
fi


mkdir -p ~/.vim/colors
cp ./railscasts.vim ~/.vim/colors/railscasts.vim
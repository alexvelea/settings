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


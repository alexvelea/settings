#!/bin/bash
if [ ! -f ~/.bashrc ]; then
    cp bashrc ~/.bashrc
else
    if cmp --silent ~/.bashrc bashrc ; then
        read -p "Do you want to override current .bashrc file? (y, n) " -n 1 -r
        echo    # (optional) move to a new line
        if [[ $REPLY =~ ^[Yy]$ ]]; then
            cp bashrc ~/.bashrc
        fi
    fi
fi


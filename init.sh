#!/bin/bash
if [ -e ~/.config/Code/User ] ; then
    echo "vscode User folder exists, please delete and try again"
    echo "rm -r ~/.config/Code/User"
else
    mkdir -p ~/.config/Code
    ln -s ~/config/Code/User ~/.config/Code/User
fi

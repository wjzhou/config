#!/bin/bash

case "$OSTYPE" in
  darwin*)          path="$HOME/Library/Application Support/Code/User" ;; 
  linux*)           path="$HOME/.config/Code/User" ;;
  msys*|cygwin*)    path="$APPDATA/Code/User" ;;
  *)        echo "unknown OS: $OSTYPE" ;;
esac

if [ -e "$path" ] ; then
    echo "vscode User folder exists, please delete and try again"
    echo "rm -r '$path'"
else
    parent=$(dirname "$path")
    mkdir -p "$parent"
    ln -s ~/config/Code/User "$path"
fi

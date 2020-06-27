#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

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
    ln -s "${DIR}/Code/User" "$path"
fi

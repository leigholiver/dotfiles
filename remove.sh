#!/bin/bash
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# bash
SED_PATH=$(echo $SCRIPT_DIR/bash/main | sed 's_/_\\/_g')
sed -i "s/source $SED_PATH//g" ~/.bashrc

# config
FILES=$(cd $SCRIPT_DIR/config; find . -type f -printf '%P\n')
for FILE in $FILES ; do
    if [ -f "$HOME/$FILE.dotfiles-previous" ]; then
        mv $HOME/$FILE.dotfiles-previous $HOME/$FILE
    fi
done

#!/bin/bash
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# bash
[ ! -d "$HOME/.bash-git-prompt" ] && git clone https://github.com/magicmonty/bash-git-prompt.git ~/.bash-git-prompt --depth=1
BASH_FILE="bash/main"
BASH_EXISTS=$(grep "source $SCRIPT_DIR/$BASH_FILE" ~/.bashrc | wc -l)
BASH_CMD="source $SCRIPT_DIR/$BASH_FILE"
if [ $BASH_EXISTS -eq "0" ]; then
    echo $BASH_CMD >> ~/.bashrc
    source ~/.bashrc
fi

# config
FILES=$(cd $SCRIPT_DIR/config; find . -type f -printf '%P\n')
for FILE in $FILES ; do
    if [ ! -L "$HOME/$FILE" ]; then
        if [ -f "$HOME/$FILE" ]; then
            mv $HOME/$FILE $HOME/$FILE.dotfiles-previous
        fi
        mkdir -p $(dirname $HOME/$FILE)
        ln -s $SCRIPT_DIR/config/$FILE $HOME/$FILE
    fi
done

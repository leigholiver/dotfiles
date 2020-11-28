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

#!/bin/bash
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# ensure git prompt is set up
[ ! -d "$HOME/.bash-git-prompt" ] && git clone https://github.com/magicmonty/bash-git-prompt.git ~/.bash-git-prompt --depth=1

# bash aliases
mv ~/.bash_aliases ~/.bash_aliases.bak
mv $SCRIPT_DIR/.bash_aliases ~/.bash_aliases
source ~/.bash_aliases
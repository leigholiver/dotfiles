#!/bin/bash
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# bash
SED_PATH=$(echo $SCRIPT_DIR/bash/main | sed 's_/_\\/_g')
sed -i "s/source $SED_PATH//g" ~/.bashrc

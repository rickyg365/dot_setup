#!/bin/bash

# Takes in 2 args OG_FILE, NEW_NAME
# Exit if not 2 args
if [[ $# -ne 2 ]]; then
    echo "must provide 2 args"
    exit 1
fi


TERMUX_PATH=$PREFIX/bin
DEFAULT_PATH=~/../../usr/bin

BIN_PATH=$PREFIX/bin
OG_FILE=$1
NEW_NAME=$2

ln -s ${PWD}/$OG_FILE $BIN_PATH/$NEW_NAME


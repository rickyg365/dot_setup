#!/bin/bash

# Takes in 1 or 2 args og_file_name, new_name*
# Make sure file is given exec privlege before running script

TERMUX_PATH=$PREFIX/bin
DEFAULT_PATH=~/../../usr/bin

BIN_PATH=$PREFIX/bin
OG_FILE=$1

if [[ $# -ne 2 ]]; then
    cp $OG_FILE $BIN_PATH/
else
    NEW_NAME=$2
    cp $OG_FILE $BIN_PATH/$NEW_NAME
fi

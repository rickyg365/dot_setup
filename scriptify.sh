#!/bin/bash

# Takes in 2 args og_file_name, new_name
BIN_PATH=$PREFIX/bin
OG_FILE=$1

# chmod +x file
chmod +x $OG_FILE

if [[ $# -ne 2 ]]; then
    cp OG_FILE $BIN_PATH/
else
    NEW_NAME=$2
    cp OG_FILE $BIN_PATH/$NEW_NAME
fi

#!/bin/bash

check_dir() {
    [ ! -d $1 ] && mkdir -p $1
}

check_file() {
    [ ! -f $1 ] && touch $1
}

savesh() {
    SHORT_PATH="~/scripts/"
    SHORT_FILE="~/scripts/shortcut_list.txt"

    # Check if dir and file exists
    check_dir($SHORT_PATH)
    check_file($SHORT_FILE)
    # Append
    pwd >> $SHORT_FILE
}

short() {
    SHORT_PATH="~/scripts/"
    SHORT_FILE="~/scripts/shortcut_list.txt"

    # Add dir if it doesnt exist
    check_dir($SHORT_PATH)
    check_file($SHORT_FILE)
    
    # Read in Shortcuts from file
    # mapfile -t SHORTS < ~/scripts/shortcut_list.txt
    shortcuts=()
    while IFS= read -r line; do
      shortcuts+=("$line")
    done < $SHORT_FILE

    # Select from List w/ fzf
    CHOSEN=`printf '%s\n' "${shortcuts[@]}" | fzf`

    cd "${CHOSEN}"
    ls
}


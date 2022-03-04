check_dir() {
    [ ! -d $1 ] && mkdir -p $1
}

savesh() {
    SHORT_PATH="~/scripts/shortcut_list.txt"

    # Add check
    check_dir($SHORT_PATH)
    # Append
    pwd >> $SHORT_PATH
}

short() {
    SHORT_PATH="~/scripts/shortcut_list.txt"

    # Add dir if it doesnt exist
    check_dir($SHORT_PATH)
    
    # Read in Shortcuts from file
    # mapfile -t SHORTS < ~/scripts/shortcut_list.txt
    shortcuts=()
    while IFS= read -r line; do
      shortcuts+=("$line")
    done < $SHORT_PATH

    # Select from List w/ fzf
    CHOSEN=`printf '%s\n' "${shortcuts[@]}" | fzf`

    cd "${CHOSEN}"
    ls
}

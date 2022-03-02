savesh() {
    # Add check
#    shortcuts=()
#    while IFS= read -r line; do
#        if [ [ $line -eq pwd ] ]  {
#
#        }
#        shortcuts+=("$line")
#    done < ~/scripts/shortcut_list.txt

    # Append
    pwd >> ~/scripts/shortcut_list.txt
}

short() {
    # mapfile -t SHORTS < ~/scripts/shortcut_list.txt
    shortcuts=()
    while IFS= read -r line; do
      shortcuts+=("$line")
    done < ~/scripts/shortcut_list.txt

    # Select from List w/ fzf
    CHOSEN=`printf '%s\n' "${shortcuts[@]}" | fzf`

    cd "${CHOSEN}"
    ls
}

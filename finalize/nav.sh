#!/bin/bash

# IDEA { 0: fnav, 1arg: nav, 2arg: mnav}

# For Tracking and Display purposes, possibly for fnav
CASES=(
    "github"
    "bin"
    "oh-my-bash"
    "python"
    "documents"
    "rust"
    "scripts"
    "phone"
    "anime"
    "help"
)

# if no args, do fnav functionality
if [ $# -eq 0 ]; then
    CHOSEN=`printf '%s\n' "${CASES[@]}" | fzf`
fi

# if 1 arg, do nav functionality
if [ $# -eq 1 ]; then
    CHOSEN="{$1}"
fi

case $CHOSEN in
    bin)
        cd $PREFIX/bin/
        ls
        ;;
    oh-my | ohmybash)
        cd ~/.oh-my-bash/
        ls
        ;;
    py | python)
        cd ~/python/
        ls
        ;;
    rust)
        cd ~/rust/
        ls
        ;;
    git | github)
        cd ~/github/
        ls
        ;;
    scr | scripts)
        cd ~/scripts/
        ls
        ;;
    doc | document)
        cd ~/documents/
        ls
        ;;
    ph | phone | phone_storage)
        cd ~/storage/
        ls
        ;;
    ani | anime | a)
        cd ~/storage/downloads/anime/
        ls
        ;;
    h | help)
        for use_case in "${CASES[@]}"; do
            echo "> $use_case"
        done
        echo -n "Enter valid entry: "
        read NEW
        mnav $NEW
        ;;
    *)  
        echo "unable to find entry"
        ls
        ;;
esac


# if 2 args, mnav functionality
if [[ $# -eq 2 ]]; then
    cd $2
    ls
    return 1
fi

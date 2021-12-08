#!/bin/bash

CASES="bin documents github oh-my-bash phone_storage python rust scripts"
# echo "$CASES"

available_inputs=`echo "$CASES"| tr ' ' '\n'`;
# printf "$available_inputs"

chosen=`printf "$available_inputs" | fzf`

case $chosen in
    bin)
        cd $PREFIX/bin/
        ls
        ;;
    oh-my | oh-my-bash)
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
    *)  
        echo "Something went wrong..."
        echo "$CASES"| tr ' ' '\n'
        ;;
    esac

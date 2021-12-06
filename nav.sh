#!/bin/bash

function nav {
    CASES=(
        "github",
        "bin",
        "oh-my-bash",
        "python",
        "documents",
        "rust",
        "shortcuts",
        "help"
        )
	case $1 in
		bin)
			cd $PREFIX/bin/
			ls
	    	;;
	    oh-my | ohmybash)
	    	cd ~/.oh-my-bash/
	    	ls
	    	;;
		py | python)
	    	cd ~/pythonD/
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
		short | shortcuts)
	    	cd ~/shortcuts/
	    	ls
	        ;;
	    doc | document)
	    	cd ~/documents/
	    	ls
	    	;;
		
        h | help)
            for use_case in "${CASES[@]}"; do
                echo "\n> $use_case"
			echo -n "\nEnter valid entry: "
			read NEW
			nav $NEW
			;;
        *)  
            echo "unable to find entry"
			cd $1
			ls
			;;
	esac       
}

function mnav {
    # if less than 2 args fail
    if [[ ($# -ne 2) ]]; then
        echo "must use 2 args\n mnav arg1 arg2"
        exit 1
    fi
	nav $1
	cd $2
	ls
}


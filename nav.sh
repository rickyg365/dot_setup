#!/bin/bash

CASES=(
"github",
"bin",
"oh-my-bash",
"python",
"documents",
"rust",
"shortcuts",
"phone",
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
ph | phone)
	cd ~/storage/
	ls
	;;
h | help)
	for use_case in "${CASES[@]}"; do
	echo "> $use_case"
	done
	echo -n "Enter valid entry: "
	read NEW
	nav $NEW
	;;
*)  
	echo "unable to find entry"
	cd $1
	ls
	;;
esac

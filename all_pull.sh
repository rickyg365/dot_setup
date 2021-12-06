#!/bin/bash

printf "\nand now...\n"
sleep 2
printf "this world shall know PAIN (x_x)\n"
# Loops through git directories, then refreshes each
for file in */.git; do
	# cd to correct path
	(cd $file/..; 
	# show current dir
	printf '\n[ %s ]:\n' "${PWD##*/}";
	# show previous status and update
	git status;
	git pull; );
done

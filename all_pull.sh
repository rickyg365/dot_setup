#!/bin/bash

# Takes in 2 args og_file_name, new_nam
for file in */.git;
	do
	(cd $file/..; 
	printf '\n[ %s ]:\n' "${PWD##*/}";
	git status;
	git pull; );
done

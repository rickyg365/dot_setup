#!/bin/bash

# Variables (default_state = 1 | true)
ADD=1
COMMIT=1
PUSH=0

commit_msg=$1

if [[ $# -ne 1 ]]; then
	commit_msg=$2
fi

# Flags
case $1 in
	-a | 'a')
		COMMIT=0
		;;
	-c | c)
		ADD=0
		;;
	*)
		;;
esac

# Actions add & commit
if [ "$ADD" == "1" ]
then
	git add .
fi

if [ "$COMMIT" = 1 ]
then
	git commit -m "$commit_msg"
fi

# Check Status
git status

echo "" # for spacing

# Manually decide to push or not
read -p "Push?: " PUSH

if [ $PUSH == "y" ]
then
	git push
	git status
fi

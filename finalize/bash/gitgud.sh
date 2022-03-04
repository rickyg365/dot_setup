#!/bin/bash

# Actions add & commit
git add .
git commit -m $1

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

#!/bin/bash

# if less than 2 args fail
if [[ ($# -ne 2) ]]; then
    echo "must use 2 args\n mnav arg1 arg2"
    exit 1
fi
nav $1
cd $2
ls

#!/bin/bash

cd "/data/data/com.termux/files/home/storage/downloads/anime"

TITLE=$1
mkdir $TITLE && cd $TITLE
ani-cli -d $TITLE

printf "[ Done ]"


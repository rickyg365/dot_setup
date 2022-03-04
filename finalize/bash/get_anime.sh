#!/bin/bash

# Relies on check dir function

TERMUX_ABS="/data/data/com.termux/files/home/storage/downloads/anime"

DEFAULT_ANIME="$HOME/downloads/anime"

# GoTo anime dir path
[ ! -d $DEFAULT_ANIME ] && mkdir -p $DEFAULT_ANIME
cd $DEFAULT_ANIME
# check_dir($DEFAULT_ANIME) && cd $DEFAULT_ANIME

# GoTo/Create title dir
TITLE=$1
[ ! -d $TITLE ] && mkdir -p $TITLE
cd $TITLE
# check_dir($TITLE) && cd $TITLE

ani-cli -d $TITLE

# printf "[ Done ]"

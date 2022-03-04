#!/bin/bash

check_dir() {
    [ ! -d $1 ] && mkdir -p $1
}

DEFAULT="~/anime"
TERMUX_ABS="/data/data/com.termux/files/home/storage/downloads/anime"

CDIR="$HOME/downloads/anime"

# GoTo anime dir path
check_dir($CDIR) && cd $CDIR

# GoTo/Create title dir
TITLE=$1
check_dir($TITLE) && cd $TITLE

ani-cli -d $TITLE

# printf "[ Done ]"

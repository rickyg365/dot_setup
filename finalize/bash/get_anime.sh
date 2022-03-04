#!/bin/bash

# Relies on check dir function

TERMUX_ABS="/data/data/com.termux/files/home/storage/downloads/anime"

DEFAULT="$HOME/downloads/anime"

# GoTo anime dir path
check_dir($DEFAULT) && cd $DEFAULT

# GoTo/Create title dir
TITLE=$1
check_dir($TITLE) && cd $TITLE

ani-cli -d $TITLE

# printf "[ Done ]"

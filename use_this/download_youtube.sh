#!/bin/bash

check_dir() {
    [ ! -d $1 ] && mkdir -p $1
}

TERMUX_ABS="/data/data/com.termux/files/home/storage/downloads/youtube"

CDIR="~/downloads/youtube"

# GoTo anime dir path
check_dir($CDIR) && cd $CDIR

yt-dlp -f "bv*[ext=mp4]+ba[ext=m4a]/b[ext=mp4] / bv*+ba/b" $1

# printf "[ Done ]"

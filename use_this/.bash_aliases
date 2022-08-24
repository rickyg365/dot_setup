#!/bin/bash

## > Sourced, To make this change permanent in our current shell
# mvmt to predefined dirs
alias nav=". nav.sh"

# ssh start
alias startssh=". init_ssh.sh"

## > Not Sourced
# Clear Console and display dir
alias cls="clear && ls"
alias cll="clear && ll"

# Github aliases
# Add to staging, commit, then push to github remote repo
alias gitgud="gitgud.sh"
# call git pull on all dirs in current dir
alias allmightypull="all_pull.sh"

# Bin aliases
# Create symbolic link
alias linkify="linkify.sh"
# Create script(copy to bin)
alias scriptify="scriptify.sh"

# Tmux aliases
alias tmucs="tmucs.sh"
alias ta="tmux a"

# Random 
alias anime="get_anime.sh"
alias ytd="download_youtube.sh"

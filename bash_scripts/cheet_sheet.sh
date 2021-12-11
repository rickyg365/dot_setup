#!/bin/bash

# Version='0.1'

# curl cht.sh/{language}/query+string
# curl cht.sh/{core-util}~operation

# curl cht.sh/{language}/learn:query+string


# Options
languages=`echo "rust python javascript nodejs typescript c cpp" | tr ' ' '\n'`

selected=`printf "$languages" | fzf`
echo "selected $selected"

read -p "query: " query
echo "$query"

echo "curl cht.sh/$selected/`echo $query | tr ' ' '+'`"
command="curl cht.sh/$selected/`echo $query | tr ' ' '+'`"
# tmux send-keys -t 'Main' 'clear && ls' C-m "$command" C-m 
curl cht.sh/$selected/`echo "$query" | tr ' ' '+'`


# if printf $languages | grep -qs $selected; then

#     # Start up work directory
    
# else
#     # Core util
#     echo "core"
#     curl cht.sh/$selected~$query
# fi



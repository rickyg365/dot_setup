#!/bin/bash

# Version='0.1'

# curl cht.sh/{language}/query+string
# curl cht.sh/{core-util}~operation

# curl cht.sh/{language}/learn:query+string

languages=`echo "rust python javascript nodejs typescript c cpp" | tr ' ' '\n'`
core_utils=`echo "xargs find mv sed awk" | tr ' ' '\n'`

selected=`printf "$languages\n$core_utils" | fzf`
# echo "selected $selected"

read -p "query: " query

if printf $languages | grep -qs $selected; then
    tmux neww curl cht.sh/$selected/`echo $query | tr ' ' '+'` & while [ : ]; do sleep 1; done
else
    # Core util
    tmux neww curl cht.sh/$selected~$query & while [ : ]; do sleep 1; done
fi



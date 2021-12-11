#!/bin/bash

# Version='1.0'
# curl cht.sh/{language}/query+string
# curl cht.sh/{core-util}~operation

# curl cht.sh/{language}/learn:query+string


languages=`echo "rust python javascript nodejs typescript c cpp" | tr ' ' '\n'`


selected=`printf "$languages" | fzf`
read -p "query: " query

echo "curl cht.sh/$selected/`echo $query | tr ' ' '+'`"


curl cht.sh/$selected/`echo "$query" | tr ' ' '+'`


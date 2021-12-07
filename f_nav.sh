#!/bin/bash

CASES="github python rust documents"

# echo "$CASES"

available_inputs=`echo "$CASES"| tr ' ' '\n'`;
# printf "$available_inputs"

chosen=`printf "$available_inputs" | fzf`

echo "$chosen"

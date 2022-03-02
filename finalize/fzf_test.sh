test_list=`echo "item1 item2 item3 item4 item5"| tr ' ' '\n'`


chosen=`printf "$test_list" | fzf`

echo "$chosen"

# !/usr/bin/env bash

read -p "directory: " dir

list=$(ls -a $HOME/$dir)
projects=`echo "$list" | tr " " "\n"`

selected=`echo "$projects" | fzf`

cd `echo "/$HOME/$dir/$selected"` && tmux new -s $selected

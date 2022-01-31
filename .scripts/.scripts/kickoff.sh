# !/usr/bin/env bash

path=$(realpath $1)
list=$(ls -a $path)
projects=`echo "$list" | tr " " "\n"`

selected=`echo "$projects" | fzf`

cd `echo "/$HOME/$dir/$selected"` && tmux new -s $selected



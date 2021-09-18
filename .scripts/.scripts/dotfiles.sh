#!/usr/bin/env bash

cd $HOME

options=`ls dotfiles/*/ | tr " " "\n"`
selected=`echo "$options" | fzf`

cd $selected
nvim .

# dotfiles/alacritty/.config/alacritty/

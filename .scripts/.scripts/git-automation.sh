#!/usr/bin/env bash

read -p "Enter the directory: " dir
read -p "Commit message: " cmessage
read -p "Branch: " branch

cd $HOME
cd $dir 
git add . 
git commit -m "$cmessage"
git push origin $branch


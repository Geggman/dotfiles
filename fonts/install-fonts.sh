#!/bin/sh

if [[ $EUID -ne 0 ]]; then 
  echo "PLEASE RUN THIS SCRIPT AS ROOT"
  exit 1
fi


for z in $(ls *.zip)
do 
  unzip $z
done

fonts=$(ls -I "*.zip" -I "*.sh")


for f in $fonts
do 
 mv $f /usr/share/fonts/    
done


echo "Fonts Are Installed"

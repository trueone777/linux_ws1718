#!/bin/bash
echo Paul
echo $(date +%d.%m.%y)

echo "###################################"  
pfade=$(find $HOME -maxdepth 1 -name "[!.]*" -type d | sort -r)


echo -e "$pfade"

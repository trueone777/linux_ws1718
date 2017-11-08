#! /bin/bash

if echo "$HOME" | grep -q "$1";
then 
	echo "Home-Verzeichnis enthält $1"
else
	echo "Home-Verzeichnis enthält nicht $1"
fi

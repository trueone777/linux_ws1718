#! /bin/bash

if test  $# -eq 2 && test -n $1 && test -n $2
then

	if echo "$HOME" | grep -q "$1";
		then echo "Home-Verzeichnis enthält Name1"
		exit $?
	elif echo "$HOME" | grep -q "$2";
		then echo "Home-Verzeichnis enthält Name2"
	 	exit $?
	else
		echo "Home-Verzeichnis enthält keinen der Übergebenen Namen"
		exit 1000;
	fi
else
	echo "Sie haben eine falsche Anzahl an Parametern übergeben!"
	exit 9999;
fi

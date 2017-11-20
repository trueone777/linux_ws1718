#! /bin/bash


case "$1" IN
	"start")
	
		if  touch -c ~/diskusage.txt 
		 then
			 du -hs ~ >> ~/diskusage.txt 2> /dev/null
		 else
			echo "Die Datei kann nicht erstellt werden"
		 fi;;
	
	"stop")
		if [ -w  ~/diskusage.txt ]
		 then
			rm ~/diskusage.txt 2> /dev/nulli
		 else
			echo "Die Datei exisitiert nicht oder kann nicht geloescht werden."
		 fi;;

	"restart") 
		if [ -w ~/diskusage.txt ]
		 then
			rm ~/diskusage.txt 2> /dev/null
			&& du -hs ~ >> ~/diskusage.txt 2> /dev/null
		 else
			echo "Datei exisitert nicht oder kann nicht geloescht werden."
		fi;;	
	 
esac

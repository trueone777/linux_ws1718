# Aufgabenblatt 21

**Aufgabe 1**

Erstellen Sie ein Skript, welches die aktuelle Speicherplatzbelegung des Homelaufwerks, des Benutzers in eine Datei in dessen Homelaufwerk speichert. Fehlermeldungen sollen zu /dev/null weitergeleitet werden.
- Das Skript sollte über einen Start, Stop und Restart Bereich verfügen.
- Bei Start soll getestet werden ob die Datei erstellt werden kann und anschließend erstellt werden
- Bei Stop soll getestet werden ob eine Datei vorhanden ist und diese gelöscht werden
- Bei Restart soll falls vorhanden die Datei gelöscht und neu erstellt werden.

```
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


```

**Aufgabe 2**

Erstellen Sie ein Startskript, welches bei den Runleveln 2-5 das eben erstellte Skript ausführt, bei allen anderen soll dieses gestoppt werden.

```
#2 - Start/Stop Skript anlegen
#! /bin/sh
# BEGIN INIT INFO
# Provides: du_home
# Required-Start: $local_fs
# Required-Stop: $local_fs
# Default-Start: 2 3 4 5
# Default-Stop: 0 1 6
# Short-Description: Speicherplatz des eigenen Homelaufwerks
# Description: Erstellt eine Datei in dem Homelaufwerk des Benutzers mit dem verwedeten Speicherplatz
### END INIT INFO
# Author: Pawel Rabinovic <rabinovp@hochschule-trier.de>

#Aktion
case "$1" in
        start )
                /usr/local/bin/a21.sh start;;
        stop )
                /usr/local/bin/a21.sh stop;;
        restart )
                /usr/local/bin/a21.sh restart;;
esac

exit 0

```


**Aufgabe 3**

Aktuallisieren Sie die Runlevel mittels **update-rc.d**

`sudo update-rc.d du_home defaults`

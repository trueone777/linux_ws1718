# Aufgabenblatt 13

**Aufgabe 1**

Schreiben Sie ein Skript namens "welcome.sh", das Sie mit Ihrem Namen Begrüßt und Ihnen die aktuelle Uhrzeit in ihrem bevorzugten Format angibt.

```
#!/bin/bash

echo Paul

echo $(date +%d.%m.%y)
```

**Aufgabe 2**

Modifizieren Sie das Skript derart, dass Sie und die Mitglieder Ihrer Gruppe es ausführen können.

`chmod ug+x ./welcome.sh`


**Aufgabe 3**

Erweitern Sie das Skript nun derart, dass es Ihnen zusätzlich eine lexikografisch absteigend sortierte Liste der Pfade in ihrem Home-Verzeichnis ausgibt.

`find $HOME -maxdepth 1 -name "[!.]*" -type d | sort -r`


**Aufgabe 4**

Erweitern Sie das Skript nun so, dass die Pfade aus 3. in einer Variable gespeichert werden. Wie schaffen Sie es, dass jeder Pfad in einer eigenen Zeile steht?

```
#!/bin/bash


echo Paul


echo $(date +%d.%m.%y)


echo "###################################"

  
pfade=$(find $HOME -maxdepth 1 -name "[!.]*" -type d | sort -r)


echo -e "$pfade"
```

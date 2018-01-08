# Aufgabenblatt 35

**Aufgabe 1**

Erstellen Sie unter Ihrem User, ein Script zum Updaten des Systems (update, upgrade, autoremove, autoclean).

`#!/bin/bash

sudo apt-get update -y
sudo apt-get upgrade -y
sudo autoremove -y 
sudo autoclean -y
`

**Aufgabe 2**

Verschieben Sie das Update-Script in ein geeignetes Verzeichnis (Userspezifische programme)

`sudo mv update-skript.sh /usr/local/bin/update-skript.sh`

**Aufgabe 3**

Geben Sie dem User ROOT die Dateiberechtigungen (owner und gruppe)

`sudo chown root:root update-skript.sh 
`

**Aufgabe 4**

Machen Sie das Script nur dem Root Benutzer zugänglich und gewähren Sie nur Ihm Ausführungsrechte

`sudo chmod u+x update-skript.sh`

**Aufgabe 5**

Erstellen Sie einen Cronjob der bei jedem Systemstart, mittels des Scriptes überprüft ob Updates verfügbar sind und diese, sofern welche vorhanden sind, voll automatisch installiert

`@reboot /usr/local/bin/update-skript.sh`

**Aufgabe 6**

Starten Sie ihr System neu und schauen Sie ob die Updates installiert wurden

`Hier könnte deine Lösung stehen`

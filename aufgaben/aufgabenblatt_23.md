# Aufgabenblatt 23

Erstellen Sie ein Backup-Skript, das das Home-Verzeichnis des übergebenen Benutzernamens sichert. Dokumentieren Sie ihr Vorgehen ausführlich.

```
#! /bin/bash

#Prüfen ob der Benutzer existiert
if [ $(find /home -maxdepth 1 -name $1 -type d) ]
then
        #Prüfen ob das Verzeichnus existiert, sonst erzeuge es neu
        if [ ! -d /var/backups/userbackup/$1 ]
        then
                sudo mkdir /var/backups/userbackup/$1 -p
        else
                echo "Das Verzeichnis ist schon vorhanden!"
        fi

        #Erstellung des Backup Archives
        echo "Backup wird erstellt..."

        if [ $(find /var/backups/userbackup/$1  -name *.tar -mmin +5) ]
        then
                echo "Lösche altes Backup..."
                echo $(find /var/backups/userbackup/$1  -name *.tar -mmin +5) | xargs -0 rm
        fi

        sudo tar -czf /var/backups/userbackup/$1/$(date +%d-%m-%y-%H-%M).tar /home/$1/*
        echo "Backup wurde erstellt!" 
fi

exit 0;

```

---

**Aufgabe 1**

Auf welche Partition sollte die Sicherung stattfinden?

`/var/backups`

**Aufgabe 2**

Erzeugen Sie dort ein Backup-Verzeichnis, sofern dies nicht schon existiert.

`Hier könnte deine Lösung stehen`


**Aufgabe 3**

Erzeugen Sie dort ein Unterverzeichnis mit dem Usernamen, sofern dies nicht schon existiert.

`Hier könnte deine Lösung stehen`


**Aufgabe 4**

Der Archivname soll Datum und Uhrzeit enthalten (dd-mm-yy-hh-mm).

`Hier könnte deine Lösung stehen`


**Aufgabe 5**

Löschen Sie zuvor ein vorhandenes Backup dieses Users, sofern dies älter als fünf Minuten ist.

`Hier könnte deine Lösung stehen`


**Aufgabe 6**

Richten Sie einen Cron-Job für Ihr Backup-Skript ein, der jeden Freitag um 23:00 Uhr ausgeführt wird.

`sudo crontab -e
0 23 * * 5 /home/trueone/Dokumente/linux_ws1718/aufgaben/backup.sh trueone
`

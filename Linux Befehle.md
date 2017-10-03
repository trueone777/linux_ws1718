# Wichtige Linux Befehle
|Befehl		|Bedeutung|
|-------------------|---------|
|###Basics||
|startx|startet grafische Benutzeroberfläche|
|logout|abmelden von der Konsole|
|[BEFEHL] --help|gibt Hilfetext zum [BEFEHL] aus|
|man [BEFEHL] |zeigt die Manual-Page zum [BEFEHL]|
|info [BEFEHL] |zeigt Dokument zu [BEFEHL] im Info-System an|
|shutdown -r now|Rechner sofort neustarten / now kann auch eine Zeitangabe in [mm] sein|
|shutdown -h now|Rechner sofort herunterfahren| 
|Suchen| |
|whereis [PROGRAMM] |sucht in den Verzeichnissen der Umgebungsvariablen PATH nach [PROGRAMM]|
|find . | grep [DATEI]|sucht ausgehend vom aktuellen Verzeichnis nach [DATEI]|
|grep [SUCHSTRING] [DATEI]|durchsucht in einer DATEI nach dem Suchbegriff [SUCHSTRING]|
|locate [DATEI]  |durchsucht die Locate-Datenbank nach [DATEI]| 
|||
|Programme starten| 
|[PROG]|Programm [PROG], welches sich im Pfad befindet, starten|
|./[PROG] |Programm [PROG], welches sich im aktuellen Verzeichnis befindet, starten|
|[PFAD]/[PROG]|Programm [PROG], welches sich im Verzeichnis [PFAD] befindet, starten| 
|||
|Navigation im Dateisystem|
|pwd|gibt das aktuelle Verzeichnis aus|
|cd / |wechselt ins Hauptverzeichnis|
|cd ..  |wechselt in das übergeordnete Verzeichnis|
|cd [VERZ] |wechselt ins Verzeichnis [VERZ]|
|cd -|wechselt in das vorherige Verzeichnis|
|cd   |wechselt ins Home-Verzeichnis des Benutzers|
|cd ~  |wechselt ins Home-Verzeichnis des Benutzers| 
|||
|Dateien| |
|cat [DATEI] |zeigt den Inhalt der Datei [DATEI] auf dem Bildschirm an|
|more [DATEI]|zeigt den Inhalt der Datei [DATEI] seitenweise an|
|less [DATEI]|wie more, man kann aber auch nach oben blättern|
|cp [DATEI1] [DATEI2]|kopiert Datei [DATEI1] in Datei [DATEI2]|
|mv [DATEI1] [DATEI2] |benennt Datei [DATEI1] in [DATEI2] um|
|mv [DATEI] [VERZ] |verschiebt Datei [DATEI] ins Verzeichnis [VERZ]|
|rm [DATEI]|löscht die Datei [DATEI]|
|touch [DATEI] |erzeugt die leere Datei [DATEI]|
|> [DATEI]|erzeugt die leere Datei [DATEI]|
|nl [DATEI]  |gibt eine Datei mit Zeilennummern aus|
|head [OPTION ][DATEI]|gibt den Anfang (den Kopf) einer Datei aus / [OPTION] z.B. -20 ersten 20 Zeilen|
|tail [OPTION] [DATEI]|gibt das Ende (den Fuss) einer Datei aus / [OPTION] z.B. -f fügt auch neue hinzu| 
|||
|Verzeichnisse| |
|ls  |kurze Liste des Verzeichnisinhaltes|
|ls -l  |ausführliche Liste des Verzeichnisinhaltes|
|ls -la  |alle Dateien des Verzeichnisses ausführlich auflisten|
|mkdir [VERZ]|neues Verzeichnis [VERZ] erstellen|
|rmdir [VERZ]|das leere Verzeichnis [VERZ] löschen|
|rm -rf [VERZ]|alle Dateien/Verzeichnisse unterhalb des Verzeichnisses [VERZ] löschen| 
|||
|Aliase| |
|alias|listet alle Aliase auf|
|[ALIAS]='[BEFEHL]'|legt neuen Alias fest / z.B. rm='rm -i' = jedes Löschen bestätigen| 
|||
|Geräte partitionieren, formatieren, überprüfen, mounten| |
|fdisk [DEVICE]|Partitionierung der Festplatte [DEVICE]|
|mke2fs [DEVICE] |Anlegen eines ext2-Dateisystems auf dem Gerät [DEVICE]|
|fsck [DEVICE] |Gerät [DEVICE] auf Fehler überprüfen|
|mount /mnt/cdrom|bindet eine eingelegte CD-ROM in das Dateisystem ein|
|umount /mnt/cdrom|entfernt eine CD-ROM aus dem Dateisystem|
||| 
|Zugriffsrechte| |
|chmod [OPTIONEN] [DATEI]|ändert die Zugriffsrechte der Datei [DATEI]|
|chgrp [GRUPPE] [DATEI]|ändert die Gruppe der Datei [DATEI] in [GRUPPE]|
|chown [OWNER] [DATEI] |ändert den Eigentümer der Datei [DATEI] in [OWNER]|
||| 
|Systeminformationen| |
|mount|Ausgabe aller gemounteter Partitionen/Geräte|
|df|Zeigt den freien Festplattenplatz der gemounteten Partitionen/ Geräte|
|date |Anzeige von Datum und Uhrzeit|
|free|gibt die Nutzung des Arbeitsspeichers aus|
|uptime|zeigt die Prozessorauslastung im Durchschnitt und die -laufzeit an|
|top|zeigt die höchsten Ressourcenverbraucher an und aktualisiert diese|
|ps -ax|zeigt Informationen über laufende Prozesse an|
|kill [PID]|beendet den Prozess mit der Prozess-ID [PID]|
|killall [PROZESSNAME]|beendet alle Prozesse mit dem Namen [PROZESSNAME] (z. B. mozilla)|
|uname -a|gibt Kernel-Informationen aus|
|arch |zeigt die Prozessorfamilie an|
|lspci |Mit Rootrechten sich alle PCI Geräte anzeigen|
|ksysguard|Unter KDE mit Rootrechten die Systemüberwachung starten|
|gnome-system-monitor|Unter GNOME mit Rootrechten die Systemüberwachung starten|
|||
|Benutzerverwaltung| |
|id|gibt deinen Benutzernamen und die Gruppenmitgliedschaften aus|
|whoami|Wer bin ich? Ausgabe des Benutzernamens|
|who|Wer ist alles eingeloggt? Ausgabe der Benutzernamen/ Terminals und Login-Zeit.|
|passwd |ändert das Passwort des aktuellen Benutzers|
|useradd -m [USERNAME] |legt den neuen Benutzer [USERNAME] an und erzeugt ein Homeverzeichnis|
|passwd [USERNAME]|ändert das Passwort des Benutzers [USERNAME] (nur als root)|
|userdel -r [USERNAME] |löscht den Benutzer [USERNAME] und sein Homeverzeichnis|
|groupadd [GRUPPE]|erzeugt eine neue Gruppe [GRUPPE]|
|groupdel [GRUPPE] |löscht die Gruppe [GRUPPE]|
||| 
|Netzwerke| |
|ifconfig eth0 up|Netzwerkkarte anschalten (als Root)|
|ifconfig eth0 down|Netzwerkkarte ausschalten (als Root)|
|route -n|anzeigen der Routingtabelle (als Root)|
|route add default gw IP|Standardgateway hinzufügen (als Root/ temporär gültig)|
|||  
|ShortCuts (Shell)| 
|STRG [R]|Rückwärts Suche in der Liste der Befehleseingaben|
|STRG [X][E] |Fügt markierten Text in Editor ein|
|STRG [Z] |hält Anwendung an|
|STRG [C]    |bricht Anwendung ab|
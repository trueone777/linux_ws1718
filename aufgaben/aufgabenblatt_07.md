# Aufgabenblatt 07
**Aufgabe 1**
Legen Sie einen Benutzer namens „tux“ an ohne Homeverzeichnis.<br />
`sudo adduser tux --no-create-home`

**Aufgabe 2**
Erstellen Sie ein Verzeichnis mit dem Namen „tux“ unter /var.<br />
`sudo mkdir /var/tux`


**Aufgabe 3**
Erstellen Sie eine Gruppe mit dem Namen „testgruppe“.<br />
`sudo addgroup testgruppe`


**Aufgabe 4**
Verschieben Sie das Homeverzeichnis des Benutzers „tux“ nach /var/tux<br />
`sudo usermod -dm /var/tux tux`

**Aufgabe 5**
Setzen Sie die Primäre Gruppe des Benutzers „tux“ auf „testgruppe“<br />
`sudo usermod -G testgruppe tux`

**Aufgabe 6**
Öffnen Sie die Datei /etc/shadow, wie sieht der Eintrag bzgl. „tux“ aus?<br />
`sudo cat /etc/shadow | grep "^tux"`

**Aufgabe 7**
Löschen Sie das Passwort des Benutzers „tux“.<br />
`sudo passwd -d tux`

**Aufgabe 8**
Wiederholen Sie Schritt 6.<br />
`tux::, Passwortfeld leer`

**Aufgabe 8**
Löschen Sie die Gruppe „testgruppe“ mit dem Befehl<br />
„delgroup --only-if-empty testgruppe“<br />
`Gruppe nicht leer, funktioniert nicht!`

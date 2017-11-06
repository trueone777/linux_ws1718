# Aufgabenblatt 14

**Aufgabe 1**

Erstellen Sie ein Bash-Skript, das den Inhalt des /root-Verzeichnisses ausgibt. Dies können Sie nur als Benutzer „root“ erledigen.

```
#! /bin/bash

ls /root

Danach Rechte setzen und Zugehörigkeit des Skriptes ändern:

chown root:root ./skript14.sh
chmod u+x ./skript14.sh
```

**Aufgabe 2**

Modifizieren Sie das Skript so, dass jeder Benutzer es ausführen kann; geben Sie aber keinem Nutzer mehr Rechte als unbedingt erforderlich.

`chmod o+x ./skript14.sh`


**Aufgabe 3**

In welches Verzeichnis des Systems gehört ihr Skript?

`/usr/local/bin`


**Aufgabe 4**

Ändern Sie die Gruppenzugehörigkeit des Verzeichnisses „Sandbox“ in Ihrem Homeverzeichnis zu „testgruppe“

`sudo chgrp testgruppe ~/Playground/Sandbox/`


**Aufgabe 5**

Versehen Sie das Verzeichnis „Sandbox“ in Ihrem Homeverzeichnis mit dem SGID-Bit und überprüfen sie ob es funktioniert.

`sudo chmod g+s ~/Playground/Sandbox/`

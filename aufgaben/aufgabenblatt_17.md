# Aufgabenblatt 17

**Aufgabe 1**

Schreiben Sie ein Skript, dass den Inhalt des Verzeichnisses /root ausgibt. Leiten Sie Fehlermeldungen zur Datei /dev/null um. Es soll ein passender Rückgabewert geliefert werden.

```
#! bin/bash

ls -l /root/ 2> /dev/null
exit $? 
```

**Aufgabe 2**

Führen Sie Ihr Skript aus. Wenn es fehlschlägt, soll es als Superuser ausgeführt werden, so dass in jedem Falle der Inhalt des /root-Verzeichnisses ausgelistet wird.

`Hier könnte deine Lösung stehen`

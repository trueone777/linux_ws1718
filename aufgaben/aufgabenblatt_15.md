# Aufgabenblatt 15

**Aufgabe 1**

Erstellen Sie eine neue Datei namens „original.txt“ und füllen Sie sie mit Inhalt.

`vim original.txt`

**Aufgabe 2**

Erstellen Sie einen Hardlink zu dieser Datei im selben Verzeichnis.

`ln original.txt link1`


**Aufgabe 3**

Kopieren Sie die Datei unter neuem Namen ins selbe Verzeichnis.

`cp original.txt neuedatei`


**Aufgabe 4**

Erstellen Sie einen Symlink zur Kopie.

`ln -s neuedatei link2`


**Aufgabe 5**

Welche Inode-Nummer haben Originaldatei, Hardlink, Softlink und Kopie?

`404882,404882,404881,404880`


**Aufgabe 5**

Löschen Sie die Kopie und die Originaldatei. Welchen Inhalt hat der Hardlink, welchen der Symlink und was gibt ***ls –li*** aus?

`Ursprünglicher Inhalt, wie Original. Symlink zeigt nicht mehr auf eine Datei, kein Inhalt
link1 - 404882
link2 404881
`

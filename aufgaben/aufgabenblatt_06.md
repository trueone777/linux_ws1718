# Aufgabenblatt 06
**Aufgabe 1**
Finden Sie die Datei „pa*wd“, welche im selben Verzeichnis wie die Datei „shadow“ liegt und lassen Sie sich den ihren Inhalt ausgeben.<br />
`sudo find / -type f -name "shadow" `  

`sudo find /etc -maxdepth 1 -type f -name "pa*wd" -exec cat {} \;`

**Aufgabe 2**
Lassen Sie sich den Dateiinhalt von der gefundenen Datei mittels less oder cat anzeigen. Wozu könnte diese Datei gut sein?<br />

`Beschreibung welchen Gruppen man angehört und Berechtigungen, in shadow werden die Passwörter
gespeichert`


**Aufgabe 3**
Sortieren Sie die Dateien/Verzeichnisse in ihrem Homeverzeichnis der Größe nach.<br />
` du  -a -h ~ | grep -i ~/ | sort -h` 

**Aufgabe 4**
Lassen Sie sich nur die 15 Größten Dateien/Verzeichnisse anzeigen lassen.<br />
` du -a -h ~ | grep -i ~/ | sort -h | tail -n15`

**Aufgabe 5**
Warum kann man sich bei Aufgabe 3&4 die sortierte Ausgabe nicht in einem verständlichem Format ausgeben lassen?<br />
`sort -n ignoriert das Format ( K,MB) `

**Aufgabe 6**
Lassen Sie sich die Belegung der lokalen Dateisysteme in einer gut lesbaren Form ausgeben.<br />
`df -hl`

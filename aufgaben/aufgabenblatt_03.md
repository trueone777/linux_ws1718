# Aufgabenblatt 03
**Aufgabe 1**
Löschen Sie die Datei „Osterhase“.<br />
`rm -v ~/Playground/Osterhase`

**Aufgabe 2**
Löschen Sie das Verzeichnis „Sandbox“ und alle enthaltenen Dateien mit möglichst wenigen Befehlen.<br />
`rm -r ~/Playground/Sandbox/`


**Aufgabe 3**
Welche anderen Verzeichnisse befinden sich innerhalb Ihres Home-Verzeichnisses?<br />
`ls -l ~/ | grep "^d" | grep -v Playground`

**Aufgabe 4**
Welche Berechtigungen haben andere Benutzer auf den Ordner „Documents“?<br />
`ls -l ~/ | grep Dokumente`

**Aufgabe 5**
Erstellen Sie das Verzeichnis „Sandbox“ erneut.<br />
`mkdir ~/Playground/Sandbox`

# Aufgabenblatt 10

**Aufgabe 1**

Legen Sie in Ihrem Sanbox-verzeichnis für jeden Benutzer, der ein Home-Verzeichnis besitzt, ein Verzeichnis an. Verwenden Sie als Datenquelle die Datei ***/etc/passwd***. Verwenden Sie exakt eine Kommandozeile.

`cd ~/Playground/Sandbox && mkdir $(cut -d: -f6 /etc/passwd | grep /home | cut -d/ -f3)`

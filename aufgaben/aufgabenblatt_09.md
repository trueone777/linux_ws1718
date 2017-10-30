# Aufgabenblatt 09

**Aufgabe 1**

Berechnen Sie das Ergebnis von -15 + 3*34 – 16 aus, sofern das Ergebnis aus 15 modulo 2 dem Wert 1 entspricht, sonst die Zahl 0 (alles ein Befehl)

`((15%2 == 1)) && echo $[-15+3*34-16] || echo 0`

**Aufgabe 2**

Erzeugen Sie für jeden im System vorhandenen Benutzer ein Verzeichnis mit gleichem Namen (bezogen auf Anmeldename) in ihrem Sandbox-Verzeichnis (ein Befehl)

+ Tipp: Durchsuchen Sie die Manpages nach dem Text „remove sections“

`cd ~/Playground/Sandbox/ && mkdir $(cut -d: -f1 /etc/passwd)`

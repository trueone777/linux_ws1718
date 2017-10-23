# Aufgabenblatt 01

**Aufgabe 1**

Überprüfen Sie die in Ihrer Linux-Instanz aktuell verwendeten Laufwerke.<br />

`sudo lshw -businfo | grep volume`

**Aufgabe 2**

Laden Sie den Treiber für das Dateisystem xfs und überprüfen Sie anschließend ob dieser korrekt geladen wurde.<br />

`sudo modprobe -v xfs && lsmod | grep xfs (anzeigen)`

**Aufgabe 3**

Von welchem Hersteller ist die verwendete PCI-Grafikkarte?<br />

`lspci | grep VGA`

**Aufgabe 4**

Entfernen Sie den Dateisystemtreiber für xfs und überprüfen Sie ob er erfolgreich entfernt wurde.<br />

`sudo modprobe -vr xfs && lsmod | grep xfs (entfernen und prüfen ob es weg ist)`

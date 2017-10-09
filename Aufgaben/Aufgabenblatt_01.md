# Aufgabenblatt 01
**Aufgabe 1**
Überprüfen Sie die in Ihrer Linux-Instanz aktuell verwendeten Laufwerke.

```bash
sudo lshw -businfo | grep volume
```

**Aufgabe 2**
Laden Sie den Treiber für das Dateisystem xfs und überprüfen Sie anschließend ob dieser korrekt geladen wurde.

```bash
sudo modprobe -v xfs && lsmod | grep xfs
```


**Aufgabe 3**
Von welchem Hersteller ist die verwendete PCI-Grafikkarte?

```bash
lspci | grep VGA
```

**Aufgabe 4**
Entfernen Sie den Dateisystemtreiber für xfs und überprüfen Sie ob er erfolgreich entfernt wurde.

```bash
sudo modprobe -vr xfs && lsmod | grep xfs
```

# Aufgabenblatt 28

**Aufgabe 1**

Sichern Sie Ihre aktuelle IPtables-Konfiguration in eine Datei unter einem angemessenem Verzeichnis.

`sudo bash -c "iptables-save > /etc/iptables_backup"`

**Aufgabe 2**

Überprüfen Sie, ob die Datei vorhanden ist. Wer ist Eigentümer dieser Datei?

`test -f  /etc/iptables_backup && echo file exists || echon file not found
 ls -l /etc/iptables_backup
Der Eigentümer ist root`


**Aufgabe 3**

Löschen Sie alle Regeln aller Ketten der IPtables-Firewall anhand der Befehlsreferenz. Wie überprüfen Sie, ob alle Regeln gelöscht wurden?

`iptables -F INPUT
iptables -F OUTPUT
iptables -F FORWARD
iptables -L`


**Aufgabe 4**

Spielen Sie das Backup wieder ein. 

`sudo iptables-restore < /etc/iptables_backup `

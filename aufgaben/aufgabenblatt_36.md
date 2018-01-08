#Aufgabenblatt 36
 
Gehen Sie davon aus, das Ihr Server mittels IP-Tables gesichert ist.

**Aufgabe 1**

Sichern Sie die bestehende Firewall-Konfiguration an einem geeigneten Ort mit dem aktuellen Zeitstempel.

`sudo iptables-save > /var/backups/iptables.${date+"%s"}.txt`

**Aufgabe 2**

Leeren Sie die Konfiguration von iptables.

`sudo iptables -F`

**Aufgabe 3**

Erstellen Sie eine Firewall-Regel, welche den Internetverkehr über das HTTP-Protokoll zum Server ermöglicht, achten sie dabei auf die Default-Policies.

`Hier könnte deine Lösung stehen`

**Aufgabe 4**

Erstellen Sie eine Firewall-Regel, welche den Internetverkehr über das HTTPS-Protokoll zum Server ermöglicht, achten sie dabei auf die Default-Policies.

```sudo iptables -A INPUT -p tcp -m tcp --dport 80 -j ACCEPT
 sudo iptables -P INPUT DROP```

**Aufgabe 5**

Erstellen Sie eine Firewall-Regel, welche die DNS-Namensauflösung ermöglicht (Client), achten sie dabei auf die Default-Policies.

```
sudo iptables -A OUTPUT -p udp --dport 53 -j ACCEPT
sudo iptables -A OUTPUT -p tcp --dport 53 -j ACCEPT
```

**Aufgabe 6**

Ein Ping auf das System darf aus Sicherheitsgründen **nicht** möglich sein, achten sie dabei auf die Default-Policies.

```
sudo iptables -A INPUT -p icmp -j DROP
sudo iptables -P INPUT ACCEPT
```

**Aufgabe 7**

Laden Sie die gesicherte Konfiguration aus der Datei zurück in die Firewall.

`sudo iptables -C < /var/backups/iptables`

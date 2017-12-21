# Aufgabenblatt 29

Führen Sie folgende Befehle aus:
iptables –F OUTPUT
iptables -A OUTPUT -p icmp -j DROP
Dokumentieren Sie ihr Vorgehen ausführlich.
---

**Aufgabe 1**

Was passiert nun, wenn Sie google.de anpingen?

`Opearion not permitted. ICMP von der Firewall blockiert`

**Aufgabe 2**

Führen Sie folgenden Befehl aus:
**iptables -A OUTPUT -p udp --dport 53 -j DROP**
Pingen Sie Google erneut an. Was geschieht nun? Wo liegt der Unterschied zu 1.?

`Unknown host google
Hier wird der UDP Protokoll blockiert, kein Internetzugang mehr möglich
Davor war es nur der Ping`


**Aufgabe 3**

Mit welchem Befehl können Sie die letzte Eingabe rückgängig machen? Mit welchem Befehl entsperren Sie das ICMP-Protokoll wieder in der OUTPUT-Chain?

` sudo iptables -D OUTPUT -p udp --dport 53 -j DROP
 sudo iptables -D OUTPUT -p icmp -j DROP
`


**Aufgabe 4**

Unterbinden Sie nun einkommende ICMP-Anfragen. Testen Sie dies, indem Sie mit Ihrem Windows-Rechner durch einen PING auf die VM.

` sudo iptables -A INPUT -p icmp -j DROP
`

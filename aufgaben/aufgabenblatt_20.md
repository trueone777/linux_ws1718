# Aufgabenblatt 20

**Aufgabe 1**

Welcher ist der Standard-Runlevel ihres Systems? Wie finden Sie dies heraus?

`2  cat /etc/init/rc-sysinit.conf`

**Aufgabe 2**

Wie **könnten** Sie den Standard-Runlevel zu 1 ändern?

`rc-sysimit.conf`


**Aufgabe 3**

Starten Sie das System über den telinit-Befehl neu. Was müssen Sie dazu tun?

`telinit 6`


**Aufgabe 4**

Starten Sie das System über den Shutdown-Befehl ohne Verzögerung neu. Was müssen Sie dazu tun?

`sudo shutdown -r 0`

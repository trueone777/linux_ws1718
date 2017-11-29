# Aufgabenblatt 24

ifconfig eth0 down
modprobe -r pcnet32
---

**Aufgabe 1**

Was haben Sie soeben durchgeführt?

`Deaktivieren des Netzwerkadapters und des Netzwerktreibers`

**Aufgabe 2**

Was zeigt das Kommando **ifconfig** und **route** Ihnen nun bzgl. eht0 an?

`Das Netzwerkinterface taucht nicht mehr auf und es wird keine Routingtabelle angezeigt`


**Aufgabe 3**

Wie können Sie dies wieder beheben?

`ifconfig eth0 up modprobe -v pcnet32`


**Aufgabe 4**

Aktivieren Sie die Netzwerkkarte wieder. Wie sieht die Routingtabelle aus?

`Da sind wieder Werte eingetragen`


**Aufgabe 5**

Machen Sie die Netzwerkverbindung wieder gangbar.

`siehe oben`


**Aufgabe 6**

Überprüfen Sie die Funktion der Karte, indem Sie Google anpingen. Wie sieht ihre Routingtabelle nun aus? Was schließen Sie allgemein daraus?

`Unverändert aber normalerweise wird use hochgezählt`

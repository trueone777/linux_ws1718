# Aufgabenblatt 26

Folgendes sind Beispiele für exotische Matrikelnummern:
A-9445-17
Q-3342-0
Z-1433-A
(ein Buchstabe, 4 Zahlen, ein bis zwei Hexadezimalwerte)
---

**Aufgabe 1**

Entwerfen Sie einen Regulären Ausdruck, der diese Muster korrekt erkennt (zu testen z. B. mit **echo A-9445-17 | grep … )**.

`echo A-9445-17 | grep '[A-Z]-[0-9]\{4\}-[0-9A-F]\{1,2\}'`

**Aufgabe 2**

Laden Sie mittels Firefox die Datei regextest aus StudIP herunter und wenden Sie ihre Lösung auf die gesamte Datei an. Welche Ausdrücke entsprechen nicht dem Muster?

`cat regextest | grep -v  '[A-Z]-[0-9]\{4\}-[0-9A-F]\{1,2\}'`

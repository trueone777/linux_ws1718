# Aufgabenblatt 37
```
#!/bin/bash

echo "" > 100.log
echo "" > 200.log
echo "" > 300.log
echo "" > 400.log
echo "" > 500.log

wert=30
if [ $# -gt 1 ] &&  [ $1 -lt 1 ]
then
	
	echo "Parameter falsch"
	exit 1
elif [ $# -eq 1 ]
then 
	wert=$1
fi	

echo $wert
for ((i=0;i<$wert;i++))
do
	num=$((RANDOM % 500+1))
	case 1 in
		$(($num<100))) echo $num >> 100.log;;
		$(($num<200))) echo $num >> 200.log;;
		$(($num<300))) echo $num >> 300.log;;
		$(($num<400))) echo $num >> 400.log;;
		$(($num<500 && $num>=400))) echo $num >> 500.log;;
	esac;

done
exit 0
```

**Aufgabe 1**

Erstellen Sie ein Shell-Script welches in einer Schleife so viele Zufallszahlen `$((RANDOM % 500+1)` erzeugt, wie als Zahl-Parameter an das Script übergeben.
Sollte kein Parameter übergeben worden sein, nehmen Sie einen default-Wert von 30 an.
Sollte mehr als 1 Parameter übergeben worden sein, geben Sie ein Fehlermeldung aus.

Die Zahlen sollen einzeln (eine Zahl pro Zeile) ausgegeben werden.

Achten Sie auf die Return-Werte.

`Hier könnte deine Lösung stehen`

**Aufgabe 2**

Verändern Sie nun das Script, dass alle Zahlen in entsprechende Log-Dateien geschrieben werden.

+ Alle Zahlen kleiner als 100 sollen in das Log-File **100.log**
+ kleiner als 200 und größer gleich 100 in Log-File **200.log**
+ kleiner als 300 und größer gleich 200 in Log-File **300.log**
+ kleiner als 400 und größer gleich 300 in Log-File **400.log**
+ kleiner als 500 und größer gleich 400 in Log-File **500.log**

Bei jedem Neustart des Scriptes, sollen die Log-Files geleert werden.

`Hier könnte deine Lösung stehen`

**Aufgabe 3**

Schreiben Sie ein Script welches aus allen Logdateien die Werte lexikografisch aufsteigend sortiert und in ein Log-File **sort.log** speichert. Es sollen keine Daten aus vorangegangene Scripten enthalten sein.

`#!/bin/bash
cat {1..5}00.log | sort -o sorted
`

**Aufgabe 4**

Erstellen Sie einen Cronjob der der alle 10 Minuten ausgeführt wird und das Zahlen-Zufallsscript ausführt. Hierbei soll eine Zufallszahl zwischen 0 und 100 als Parameter übergeben werden. 
Wenn dieses Script erfolgreich ausgeführt wurde, soll das Sortierscript ausgeführt werden.
Wenn das Sortierscript erfolgreich ausgeführt wurde, soll mittels eines Webbrowsers euer Github-Account aufgerufen werden. Dabei soll das Script nicht auf das Beenden des Browsers warten.

`cronta -e
10 * * * * * sudo ./zufallstahl echo $(( RANDOM % 101)) && ./sortieren.sh && google-chrome& http://www.google.com
`

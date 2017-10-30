# Aufgabenblatt 11

**Aufgabe 1**

Laden Sie die Datei „unsorted.txt“ aus Stud.IP herunter. Sie dient Ihnen
als Datenquelle. Geben Sie die ersten fünf Einträge, die ein Zeichen der
Menge [aA] enthalten lexikographisch sortiert in die Datei „sorted“
aus.

`grep [aA] < unsorted.txt |  head -n5 | sort > sorted`

**Aufgabe 2**

Ist die Reihenfolge der im ersten Aufgabenteil verwendeten
Kommandos wichtig? Begründen Sie Ihre Antwort kurz.

`Die Reihenfolge ist wichtig, da aus der Aufgabenstellung hervorgeht,
dass man zuerst die 5 ersten Einträge nimmt und die danach sortiert. Das
ist ein Unterschied zu zuerst Datei sortieren und danach die ersten 5 Einträge! `

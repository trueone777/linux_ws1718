# Aufgabenblatt 22

**Aufgabe 1**

Was macht der vordefinierte Cron-Job? Bei Unklarheit überprüfen Sie den Sachverhalt für lubuntu mittels Online-Quellen.

`crontab -e  Backup aller User accounts, jede Woche um 05:00 Uhr`

**Aufgabe 2**

Richten Sie einen Cron-Job ein, der ihnen jede Minute das aktuelle Datum (und Zeit) und den Inhalt aller  Benutzer-Homeverzeichnisse in die datei /root/contents ausgibt.

`
* * * * *  echo $(date) >> /root/contents && ls /home/* >> /root/contents 
`



*Aufgabe 3**

Green-IT erhält im Unternehmen Einzug. Wie stellen Sie sicher, dass der Rechner Samstagnachts um 0 nicht läuft (Herunterfahren dauert eine Minute)?

`Hier könnte deine Lösung stehen`

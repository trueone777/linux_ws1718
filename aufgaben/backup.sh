#! /bin/bash

#Prüfen ob der Benutzer existiert
if [ $(find /home -maxdepth 1 -name $1 -type d) ]
then
	#Prüfen ob das Verzeichnus existiert, sonst erzeuge es neu
	if [ ! -d /var/backups/userbackup/$1 ]
	then
		sudo mkdir /var/backups/userbackup/$1 -p
	else
		echo "Das Verzeichnis ist schon vorhanden!"
	fi

	#Erstellung des Backup Archives
	echo "Backup wird erstellt..."
	
	if [ $(find /var/backups/userbackup/$1  -name *.tar -mmin +5) ]
	then
		echo "Lösche altes Backup..."
		sudo rm /var/backups/userbackup/$1/*.tar 
	fi

	sudo tar -czf /var/backups/userbackup/$1/$(date +%d-%m-%y-%H-%M).tar /home/$1/*
	echo "Backup wurde erstellt!" 
fi

exit 0;

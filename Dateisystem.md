# Das Dateisystem (openSuse)
|Verzeichnis		|Bedeutung|
|-------------------|---------|
|/   				|Das Wurzelverzeichnis|
|/boot 				|Enthält den bootfähigen Kernel und Dateien des Bootmanagers.|
|/bin  				|Binaries (Ausführbare Programme); enthält die wichtigsten Nutzer- und Administrator-Programme, die zur Systemwartung benötigt werden. Können von allen Usern ausgeführt werden.|
|/dev  				|Enthält die Gerätedateien.|
|/etc  				|Systemweit gültige Konfigurationsdateien.|
|	printcap		|Drucker-Konfiguration (ASP-Filter)|
|	modules.conf	|Liste der ladbaren Module (Treiber)|
|	passwd			|Liste der User (Login:Passwort:UID:GID:Name:Homeverzeichnis:Shell)|
|	hosts			|Datei für die lokale Namensauflösung (Name <- -> IP-Adresse)|
|	services		|Liste der Netzwerkdienste mit Portnummer und Protokoll|
|	sysconfig		|enthält die Systemkonfiguration (Variablen, Netzwerk, …)|
|	init.d			|enthält die Startskripte der Dienste|
|		rc5.d		|Runlevel 5 mit Links auf die Dienste, die er startet|
|/home				|Enthält die lokalen Nutzerverzeichnisse (Home-Directories)|
|	opensuse		|Home-Verzeichnis des Benutzers ‚opensuse‘|
|:tux				|Home-Verzeichnis des Benutzers ‚tux‘|
|/lib				|Enthält die gemeinsam genutzten Bibliotheken (shared libraries)|
|/mnt	/media		|Mount-Verzeichnisse zum Einbinden anderer Dateisysteme|
|/opt				|Zusätzliche, optionale Software, wie beispielsweise KDE, Gnome, Libre Office, …|
|/proc				|Virtuelles Prozess-Dateisystem (Schattenverzeichnisse)|
|/root				|Home-Directory des root-Users (Systemadministrator)|
|/sbin				|Dienstprogramme für den Systemadministrator. Nicht Teil des allgemeinen Programmsuchpfads|
|/tmp				|Temporäre Dateien. Für jedermann beschreibbar|
|/usr				|UNIX Resources: Binaries, die für das System nicht notwendig sind. Anwenderprogramme mit Konfigurations- und Hilfedateien|
|	bin				|Binaries von telnet, passwd, mc, man, less, emacs|
|	sbin			|Binaries von useradd, lpd, inetd, cron|
|	local			|Distributionsunabhängige Zusatzprogramme der User|
|/var				|Veränderliche Dateien des usr-Systems|
|	lock			|Lockfiles: Sperren Geräte oder Dateien, die in Gebrauch sind|
|	log				|Protokolldateien|
|		messages	|Kernel- und Programmmeldungen, Fehlermeldungen|
|		boot.msg	|Bootmeldungen|
|	spool			|Ablage, u.a. für Druckaufträge|
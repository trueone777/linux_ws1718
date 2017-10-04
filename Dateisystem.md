# Das Dateisystem
|Verzeichnis		|Bedeutung|
|-------------------|---------|
|/   				|Das Wurzelverzeichnis|
|/boot 				|Enthält den bootfähigen Kernel und Dateien des Bootmanagers.|
|/bin  				|Binaries (Ausführbare Programme); enthält die wichtigsten Nutzer- und Administrator-Programme, die zur Systemwartung benötigt werden. Können von allen Usern ausgeführt werden.|
|/dev  				|Enthält die Gerätedateien.|
|/etc  				|Systemweit gültige Konfigurationsdateien.|
|>>printcap		|Drucker-Konfiguration (ASP-Filter)|
|>modules.conf	|Liste der ladbaren Module (Treiber)|
|<dd>passwd			|Liste der User (Login:Passwort:UID:GID:Name:Homeverzeichnis:Shell)|
|<dd>hosts			|Datei für die lokale Namensauflösung (Name <- -> IP-Adresse)|
|<dd>services		|Liste der Netzwerkdienste mit Portnummer und Protokoll|
|<dd>sysconfig		|enthält die Systemkonfiguration (Variablen, Netzwerk, …)|
|<dd>init.d			|enthält die Startskripte der Dienste|
|<dd><dd>rc5.d		|Runlevel 5 mit Links auf die Dienste, die er startet|
|/home				|Enthält die lokalen Nutzerverzeichnisse (Home-Directories)|
|<dd>opensuse		|Home-Verzeichnis des Benutzers ‚opensuse‘|
|<dd>tux				|Home-Verzeichnis des Benutzers ‚tux‘|
|/lib				|Enthält die gemeinsam genutzten Bibliotheken (shared libraries)|
|/mnt	/media		|Mount-Verzeichnisse zum Einbinden anderer Dateisysteme|
|/opt				|Zusätzliche, optionale Software, wie beispielsweise KDE, Gnome, Libre Office, …|
|/proc				|Virtuelles Prozess-Dateisystem (Schattenverzeichnisse)|
|/root				|Home-Directory des root-Users (Systemadministrator)|
|/sbin				|Dienstprogramme für den Systemadministrator. Nicht Teil des allgemeinen Programmsuchpfads|
|/tmp				|Temporäre Dateien. Für jedermann beschreibbar|
|/usr				|UNIX Resources: Binaries, die für das System nicht notwendig sind. Anwenderprogramme mit Konfigurations- und Hilfedateien|
|<dd>bin				|Binaries von telnet, passwd, mc, man, less, emacs|
|<dd>sbin			|Binaries von useradd, lpd, inetd, cron|
|<dd>local			|Distributionsunabhängige Zusatzprogramme der User|
|/var				|Veränderliche Dateien des usr-Systems|
|<dd>lock			|Lockfiles: Sperren Geräte oder Dateien, die in Gebrauch sind|
|<dd>log				|Protokolldateien|
|<dd><dd>messages	|Kernel- und Programmmeldungen, Fehlermeldungen|
|<dd><dd>boot.msg	|Bootmeldungen|
|<dd>spool			|Ablage, u.a. für Druckaufträge|
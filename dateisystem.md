# Das Dateisystem
| Verzeichnis         | Bedeutung |
| ------------------- | --------- |
|&nbsp;&nbsp;&nbsp;/                   | Das Wurzelverzeichnis|
|&nbsp;&nbsp;&nbsp;/boot               | Enthält den bootfähigen Kernel und Dateien des Bootmanagers.|
|&nbsp;&nbsp;&nbsp;/bin                | Binaries (Ausführbare Programme); enthält die wichtigsten Nutzer- und Administrator-Programme, die zur Systemwartung benötigt werden. Können von allen Usern ausgeführt werden.|
|&nbsp;&nbsp;&nbsp;/dev                | Enthält die Gerätedateien |
|&nbsp;&nbsp;&nbsp;/etc                | Systemweit gültige Konfigurationsdateien |
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/printcap         | Drucker-Konfiguration (ASP-Filter) |
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/modules.conf     | Liste der ladbaren Module (Treiber)|
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/passwd           | Liste der User (Login:Passwort:UID:GID:Name:Homeverzeichnis:Shell)|
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/hosts            | Datei für die lokale Namensauflösung (Name <- -> IP-Adresse)|
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/services         | Liste der Netzwerkdienste mit Portnummer und Protokoll|
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/sysconfig        | Enthält die Systemkonfiguration (Variablen, Netzwerk, …)|
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/init.d           | Enthält die Startskripte der Dienste |
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/rc5.d            | Runlevel 5 mit Links auf die Dienste, die er startet|
|&nbsp;&nbsp;&nbsp;/home               | Enthält die lokalen Nutzerverzeichnisse (Home-Directories)|
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/opensuse         | Home-Verzeichnis des Benutzers ‚opensuse‘|
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/tux              | Home-Verzeichnis des Benutzers ‚tux‘|
|&nbsp;&nbsp;&nbsp;/lib                | Enthält die gemeinsam genutzten Bibliotheken (shared libraries)|
|&nbsp;&nbsp;&nbsp;/mnt/media          | Mount-Verzeichnisse zum Einbinden anderer Dateisysteme|
|&nbsp;&nbsp;&nbsp;/opt                | Zusätzliche, optionale Software, wie beispielsweise KDE, Gnome, Libre Office, …|
|&nbsp;&nbsp;&nbsp;/proc               | Virtuelles Prozess-Dateisystem (Schattenverzeichnisse)|
|&nbsp;&nbsp;&nbsp;/root               | Home-Directory des root-Users (Systemadministrator)|
|&nbsp;&nbsp;&nbsp;/sbin               | Dienstprogramme für den Systemadministrator. Nicht Teil des allgemeinen Programmsuchpfads|
|&nbsp;&nbsp;&nbsp;/tmp                | Temporäre Dateien. Für jedermann beschreibbar|
|&nbsp;&nbsp;&nbsp;/usr                | UNIX Resources: Binaries, die für das System nicht notwendig sind. Anwenderprogramme mit Konfigurations- und Hilfedateien|
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/bin              | Binaries von telnet, passwd, mc, man, less, emacs|
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/sbin             | Binaries von useradd, lpd, inetd, cron|
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/local            | Distributionsunabhängige Zusatzprogramme der User|
|&nbsp;&nbsp;&nbsp;/var                | Veränderliche Dateien des usr-Systems|
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/lock             | Lockfiles: Sperren Geräte oder Dateien, die in Gebrauch sind|
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/log              | Protokolldateien|
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/messages         | Kernel- und Programmmeldungen, Fehlermeldungen|
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/boot.msg         | Bootmeldungen|
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/spool            | Ablage, u.a. für Druckaufträge|

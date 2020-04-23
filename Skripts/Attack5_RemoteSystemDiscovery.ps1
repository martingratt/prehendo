$path = "C:\prehendo\Logs\attack5.txt"

$ErrorActionPreference="SilentlyContinue"
Stop-Transcript | out-null
$ErrorActionPreference = "Continue"
Start-Transcript -path $path -append


####################DISCOVERY START####################

net accounts
net config server
net config workstation
net localgroup
net localgroup administrators
net share
net statistics workstation
net user
#net group ##only on a Windows Domain Controller

ipconfig
ping 10.0.1.16
whoami

####################DISCOVERY END####################

Stop-Transcript


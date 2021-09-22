Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process

$schAction = New-ScheduledTaskAction -Execute "Powershell.exe" -Argument '-NoProfile -WindowStyle Hidden -File "C:\code\scripts\vstest.ps1"'

$schTrigger = New-ScheduledTaskTrigger -AtStartup

$schPrincipal = New-ScheduledTaskPrincipal -UserId "NT AUTHORITY\SYSTEM" -LogonType ServiceAccount

Register-ScheduledTask -Action $schAction -Trigger $schTrigger -TaskName "vstest" -Description "Scheduled Task to run vs  configuration Script At Startup" -Principal $schPrincipal
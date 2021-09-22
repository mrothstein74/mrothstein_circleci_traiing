Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process

Import-Module -Name 'C:\git\VSCELicense\VSCELicense.psd1'

Get-VSCELicenseExpirationDate -Version 2019

Unregister-ScheduledTask -TaskName "vstest" -Confirm:$false
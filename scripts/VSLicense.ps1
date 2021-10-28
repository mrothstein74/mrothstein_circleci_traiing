Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process

Import-Module -Name 'C:\Users\circleci\project\VSCELicense\VSCELicense.psd1'

Write-Output "Before update"
Get-VSCELicenseExpirationDate -Version 2019

# Set the timeout to 31 days
Set-VSCELicenseExpirationDate -Version 2019 -AddDays 31

Write-Output "After update"
Get-VSCELicenseExpirationDate -Version 2019

# Delete the scheduled task
Unregister-ScheduledTask -TaskName "ccitimeout" -Confirm:$false
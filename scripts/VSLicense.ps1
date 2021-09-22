﻿Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process

Import-Module -Name 'C:\git\VSCELicense\VSCELicense.psd1'

Get-VSCELicenseExpirationDate -Version 2019

Set-VSCELicenseExpirationDate -Version 2019 -AddDays 31
Get-VSCELicenseExpirationDate -Version 2019
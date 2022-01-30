Set-TimeZone "Central Europe Standard Time"

Set-ItemProperty -Path "HKCU:\Control Panel\International" -Name sCountry -Value "Slovenia";
Set-ItemProperty -Path "HKCU:\Control Panel\International" -Name sShortDate -Value "dddd";
Set-ItemProperty -Path "HKCU:\Control Panel\International" -Name sShortTime -Value "H:mm:ss";
Set-ItemProperty -Path "HKCU:\Control Panel\International" -Name iFirstDayOfWeek -Value 0;
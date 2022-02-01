Set-TimeZone "Central Europe Standard Time"

LOG "Setting registery for clock and date..."
Set-ItemProperty -Path "HKCU:\Control Panel\International" -Name sCountry -Value "Slovenia";
Set-ItemProperty -Path "HKCU:\Control Panel\International" -Name sShortDate -Value "dddd";
Set-ItemProperty -Path "HKCU:\Control Panel\International" -Name sShortTime -Value "H:mm:ss";
Set-ItemProperty -Path "HKCU:\Control Panel\International" -Name iFirstDayOfWeek -Value 0;
$languages = Get-WinUserLanguageList 
$languages.Clear()
$languages.add("en-US")
$languages.add("en-SI")
Set-WinUserLanguageList $languages -Force
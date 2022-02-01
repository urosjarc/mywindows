$languages = Get-WinUserLanguageList
$languages.Clear()
LOG "Adding en-US keyboard layout"
$languages.add("en-US")
LOG "Adding en-SI keyboard layout"
$languages.add("en-SI")
Set-WinUserLanguageList $languages -Force
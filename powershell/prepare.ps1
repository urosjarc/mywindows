mode con:cols=500 lines=9999
$MaximumHistoryCount=[int16]::MaxValue
Get-ChildItem . -Recurse -File -Force | Unblock-File

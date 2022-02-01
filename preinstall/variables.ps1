Get-Variable | ? { $_.name -cmatch '^[A-Z]*_[A-Z]*$'}

PROCEED "Are you OK with variables values?"
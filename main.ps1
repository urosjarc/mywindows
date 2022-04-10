. .\powershell\prepare.ps1
. .\powershell\preferences.ps1
. .\powershell\variables.ps1
. .\powershell\functions.ps1

Start-Transcript -Path $LOG_FILE -Force


LOG_TITLE "PRE-INSTALL"
LOG_TITLE "WINDOWS UPDATES"					| .\preinstall\windows-updates.ps1
LOG_TITLE "CONFIRM VARIABLES" 			| .\preinstall\variables.ps1
LOG_TITLE "SETUP FOLDERS"						| .\preinstall\folders.ps1
LOG_TITLE "INSTALL DEPENDENCIES"		| .\preinstall\dependencies.ps1

LOG_TITLE "INSTALL"
LOG_TITLE "INSTALL CHOCOLATEY"			| .\install\chocolatey.ps1
LOG_TITLE "INSTALL PIP"							| .\install\pip.ps1
LOG_TITLE "INSTALL NPM"							| .\install\npm.ps1

LOG_TITLE "POS-INSTALL"
LOG_TITLE "DEBLOAT WINDOWS"					| .\postinstall\debloat.ps1
LOG_TITLE "SETUP KEYBOARD"					| .\postinstall\keyboard.ps1
LOG_TITLE "REMAP KEY SHORTCUTS"			| .\postinstall\auto_hot_key.ps1
LOG_TITLE "SETUP DATE AND TIME"			| .\postinstall\time_date.ps1
LOG_TITLE "SETUP GIT"								| .\postinstall\git.ps1
LOG_TITLE "FIX REGISTERY"						| .\postinstall\registery.ps1
LOG_TITLE "MANUAL SETUP"						| .\postinstall\manual_setup.ps1

LOG_TITLE "FINISH"
Stop-Transcript
Restart-Computer -Confirm
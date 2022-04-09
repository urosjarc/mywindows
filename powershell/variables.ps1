# USER VARIABLES
$GIT_USER = "urosjarc"
$GIT_EMAIL = "jar.fmf@gmail.com"

# DIRECTORIES
$DATE = (Get-Date -Format "HHmmss_ddMMyyyy")
$ROOT_DIR = (Split-Path $PSScriptRoot -Parent)
$TMP_DIR = "$ROOT_DIR\tmp"
$LOG_FILE = "$ROOT_DIR\$DATE.log"
$FILES_DIR = "$ROOT_DIR\files"
$BACKUP_DIR = "$ROOT_DIR\backup"
$STARTUP_DIR = "$env:USERPROFILE\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
$APPS_DIR = "$env:USERPROFILE\APPS"
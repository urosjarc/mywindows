$DebugPreference = "Continue"

# ROOT PATH 
$ROOT = (Split-Path $PSScriptRoot -Parent)

# VERSIONS
$B3_VERSION = "0.7"

# USER VARIABLES
$GIT_USER = "urosjarc"
$GIT_EMAIL = "jar.fmf@gmail.com"

# DIRECTORIES
$TMP_DIR = "$ROOT\tmp"
$FILES_DIR = "$ROOT\files"
$STARTUP_DIR = "$env:USERPROFILE\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
$APPS_DIR = "$env:USERPROFILE\APPS"
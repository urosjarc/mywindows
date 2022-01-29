# Set variables
$TMP_DIR = ".\tmp"
$APPS_DIR = "$env:USERPROFILE\APPS"
$B3_VERSION = "0.7"
$GIT_USER = "urosjarc"
$GIT_EMAIL = "jar.fmf@gmail.com"

# INIT
Remove-Item -Recurse -Force $TMP_DIR
Remove-Item -Recurse -Force $APPS_DIR
mkdir -Force $TMP_DIR
mkdir -Force $APPS_DIR

# DEPENDENCIES
.\scripts\deps.ps1

# # INSTALL
Get-WindowsUpdate -AcceptAll -Install
.\scripts\exe.ps1
.\scripts\chocolatey.ps1
.\scripts\npm.ps1
.\scripts\pip.ps1

# # CONFIG
Move-Item .\config\b3.config "$APPS_DIR/b3-$B3_VERSION/bin/config"
git config --global user.name "$GIT_USER"
git config --global user.email "$GIT_EMAIL"
reg import .\config\registery.reg
# Set variables
$TMP_DIR = ".\tmp"
$BUGN_VERSION = "v9.0.2"
$GIT_USER = "urosjarc"
$GIT_EMAIL = "jar.fmf@gmail.com"

# INIT
Remove-Item -Recurse -Force $TMP_DIR
mkdir -Force $TMP_DIR

# DEPENDENCIES
.\scripts\deps.ps1

# INSTALL
Get-WindowsUpdate -AcceptAll -Install
.\scripts\exe.ps4
.\scripts\chocolatey.ps1
.\scripts\npm.ps1
.\scripts\pip.ps1

# CONFIG
Move-Item -Force .\config\Config.ini
git config --global user.name "$GIT_USER"
git config --global user.email "$GIT_EMAIL"
Set-Location HKLM:\SOFTWARE\Policies\Microsoft\Windows
New-ItemProperty -Force -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows" -Name "NoLockScreen" -Value 1 -PropertyType Dword
Set-ItemProperty -Force -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows" -Name "NoLockScreen" -Value 1

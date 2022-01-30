# INSTALLATION OF WINDOWS UPDATE
LOG_TITLE "Install windows update module"
Install-Module PSWindowsUpdate

# INTALATION OF CHOCOLATEY
LOG_TITLE "Install chocolatey package manager"
Set-ExecutionPolicy Unrestricted -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
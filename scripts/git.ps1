# INSTALL B3
# Invoke-WebRequest "https://github.com/ritschmaster/b3/releases/download/$B3_VERSION/b3-$B3_VERSION.zip" -OutFile "$TMP_DIR/b3.zip"
# Expand-Archive "$TMP_DIR/b3.zip" -DestinationPath $TMP_DIR
# Copy-Item -Recurse -Force -Path "$TMP_DIR/b3-$B3_VERSION" -Destination $APPS_DIR
# # Create a Shortcut with Windows PowerShell
# $FILE = "$env:USERPROFILE\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\b3.bat"
# Remove-Item $FILE
# New-Item $FILE
# Set-Content $FILE "cd %USERPROFILE%/APPS/b3-$B3_VERSION/bin && b3.exe"

# INSTALL DEBLOATER 
Invoke-WebRequest https://github.com/jstnlth/Windows10Debloater/archive/refs/heads/addWhitelistDefaults.zip -OutFile "$TMP_DIR/debloat.zip"
Expand-Archive "$TMP_DIR/debloat.zip" -DestinationPath $TMP_DIR
. "$TMP_DIR/Windows10Debloater*/Windows10SysPrepDebloater.ps1"
. "$TMP_DIR/Windows10Debloater*/Windows10Debloater.ps1"
# Start main debloater
Invoke-WebRequest https://github.com/jstnlth/Windows10Debloater/archive/refs/heads/addWhitelistDefaults.zip -OutFile "$TMP_DIR/debloat.zip"
Expand-Archive "$TMP_DIR/debloat.zip" -DestinationPath $TMP_DIR
. "$TMP_DIR/Windows10Debloater*/Windows10SysPrepDebloater.ps1"
. "$TMP_DIR/Windows10Debloater*/Windows10Debloater.ps1"
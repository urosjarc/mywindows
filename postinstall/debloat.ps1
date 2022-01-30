# Start main debloater
$NAME = "Windows10Debloater"
$TAG = "addWhitelistDefaults"

Invoke-WebRequest "https://github.com/jstnlth/$NAME/archive/refs/heads/$TAG.zip" -OutFile "$TMP_DIR/debloat.zip"
Expand-Archive "$TMP_DIR/debloat.zip" -DestinationPath $TMP_DIR

& "$TMP_DIR\$NAME-$TAG\Windows10SysPrepDebloater.ps1" -Sysprep -Debloat -Privacy
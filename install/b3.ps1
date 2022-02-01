# Download from git
$BIN = "$APPS_DIR/b3/b3-$B3_VERSION/bin"
APPS_ZIP -app "b3" -url "https://github.com/ritschmaster/b3/releases/download/$B3_VERSION/b3-$B3_VERSION.zip"
STARTUP_BAT -app "b3" -content "start /B /d $BIN b3.exe"
COPY_ITEM "$FILES_DIR\b3.config" "$BIN/config"

# INSTALL BUGN
Invoke-WebRequest "https://github.com/fuhsjr00/bug.n/archive/refs/tags/$BUGN_VERSION.zip" -OutFile "$TMP_DIR/bugn.zip"
Expand-Archive "$TMP_DIR/bugn.zip" -DestinationPath $TMP_DIR
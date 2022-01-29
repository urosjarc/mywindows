
# INSTALL BUGN
Invoke-WebRequest "https://github.com/ritschmaster/b3/releases/download/$B3_VERSION/b3-$B3_VERSION.zip" -OutFile "$TMP_DIR/b3.zip"
Expand-Archive "$TMP_DIR/b3.zip" -DestinationPath $TMP_DIR
Copy-Item -Recurse -Force -Path "$TMP_DIR/b3-$B3_VERSION" -Destination "$env:USERPROFILE\APPS"
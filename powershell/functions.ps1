function LOG_EXE($msg) {
    Write-Debug $msg
}
function LOG($msg) {
    Write-Debug $msg
}
function PROCEED($msg) {
    $title = " "
    $choices = '&Yes', '&No'

    $decision = $Host.UI.PromptForChoice($title, $msg, $choices, 0)
    if ($decision -eq 1) {
        exit 1
    }
}
function LOG_TITLE($msg){
    Write-Host ""
    Write-Host ""
    Write-Host "==============================="
    Write-Host " $msg"
    Write-Host "==============================="
    Write-Host ""
    Start-Sleep 1
}
function APP_KILL($app) {
    LOG_EXE "APP_KILL $app"
    taskkill /IM $app /F /FI "STATUS eq RUNNING"
}
function RM_MK_DIR($dir) {
    LOG_EXE "RM_MK_DIR $dir"
    Remove-Item -Recurse -Force -Path $dir -ErrorAction SilentlyContinue
    New-Item -ItemType Directory -Force -Path $dir | Out-Null
}
function STARTUP_BAT ($app, $content){
    LOG_EXE "STARTUP_BAT $app.bat $content"
    $FILE = "$STARTUP_DIR\$app.bat"
    Remove-Item $FILE -ErrorAction SilentlyContinue
    New-Item $FILE | Out-Null
    Set-Content -Path $FILE -Value $content
}
function COPY_ITEM ($src, $dest){
    LOG_EXE "COPY_ITEM $src $dest"
    Copy-Item -Recurse -Force -Path $src -Destination $dest
}
function APPS_ZIP ( $url, $app){
    LOG_EXE "APPS_ZIP $app $url"

    LOG "Download: $url"
    Invoke-WebRequest $url -OutFile "$TMP_DIR\$app.zip"

    RM_MK_DIR "$TMP_DIR\$app"
    LOG "Expanding: $TMP_DIR\$app.zip"	
    Expand-Archive "$TMP_DIR\$app.zip" -DestinationPath "$TMP_DIR\$app"

    COPY_ITEM -src "$TMP_DIR\$app" -dest $APPS_DIR
}


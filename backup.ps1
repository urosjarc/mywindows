. .\powershell\preferences.ps1
. .\powershell\variables.ps1
. .\powershell\functions.ps1

LOG_TITLE "BACKUP VISUAL STUDIO SETTINGS"
$dir = "$ROOT_DIR\backup\visual_studio_code"
RM_MK_DIR $dir
COPY_ITEM "$env:USERPROFILE\AppData\Roaming\Code\User\keybindings.json" $dir
COPY_ITEM "$env:USERPROFILE\AppData\Roaming\Code\User\settings.json" $dir
LOG "Getting list of plugins"
code --list-extensions | % { "code --install-extension $_" } > $dir\install_extensions.ps1
Add-Type -AssemblyName Microsoft.VisualBasic

Start-Process "ms-settings:taskbar"
[Microsoft.VisualBasic.Interaction]::MsgBox('Deactivate taskbar items, auto hide taskbar... Then click OK','OKOnly,SystemModal,Information', 'Debloater')

Start-Process "ms-settings:colors"
$rez = [Microsoft.VisualBasic.Interaction]::MsgBox('Select windows colors... Then click OK','OKOnly,SystemModal,Information', 'Debloater')

$id = Start-Process "ms-settings:nightlight"
$rez = [Microsoft.VisualBasic.Interaction]::MsgBox('Activate night light... Then click OK','OKOnly,SystemModal,Information', 'Debloater')

start "https://docs.unrealengine.com/5.0/en-US/setting-up-visual-studio-development-environment-for-cplusplus-projects-in-unreal-engine/"
start "https://visualstudio.microsoft.com/vs/older-downloads/"
$rez = [Microsoft.VisualBasic.Interaction]::MsgBox('Install Visual Studio... Then click OK','OKOnly,SystemModal,Information', 'Debloater')
Start-Process "ms-settings:taskbar"
Add-Type -AssemblyName Microsoft.VisualBasic
[Microsoft.VisualBasic.Interaction]::MsgBox('Deactivate taskbar items, auto hide taskbar... Then click OK','OKOnly,SystemModal,Information', 'Debloater')

Start-Process "ms-settings:colors"
Add-Type -AssemblyName Microsoft.VisualBasic
$rez = [Microsoft.VisualBasic.Interaction]::MsgBox('Select windows colors... Then click OK','OKOnly,SystemModal,Information', 'Debloater')
Add-Type -AssemblyName Microsoft.VisualBasic

Start-Process "ms-settings:windowsupdate"
[Microsoft.VisualBasic.Interaction]::MsgBox('Install windows updates... Then click OK','OKOnly,SystemModal,Information', 'Debloater')
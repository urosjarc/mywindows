# Start main debloater
$NAME = "Windows10Debloater"
$TAG = "addWhitelistDefaults"

LOG_TITLE "Getting debloater"
Invoke-WebRequest "https://github.com/jstnlth/$NAME/archive/refs/heads/$TAG.zip" -OutFile "$TMP_DIR/debloat.zip"
Expand-Archive "$TMP_DIR/debloat.zip" -DestinationPath $TMP_DIR

LOG_TITLE "Running debloater"
& "$TMP_DIR\$NAME-$TAG\Windows10SysPrepDebloater.ps1" -Sysprep -Debloat -Privacy

LOG_TITLE "Removing custom apps"
$Bloatware = @(
	"*Microsoft.Advertising.Xaml_10.1712.5.0_x64__8wekyb3d8bbwe*"
	"*Microsoft.Advertising.Xaml_10.1712.5.0_x86__8wekyb3d8bbwe*"
	"*Microsoft.BingWeather*"
    "*Microsoft.WindowsStore*"
)
foreach ($Bloat in $Bloatware) {
	Get-AppxPackage -Name $Bloat| Remove-AppxPackage
	Get-AppxProvisionedPackage -Online | Where-Object DisplayName -like $Bloat | Remove-AppxProvisionedPackage -Online
	Write-Output "Trying to remove $Bloat."
}

LOG_TITLE "Cleaning taskbar"
Pin-App "Microsoft Edge" -unpin -start -taskbar
Pin-App "Microsoft Store" -unpin -start -taskbar


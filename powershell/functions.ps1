function LOG_EXE {
	param ($msg)
	Write-Debug $msg
}
function LOG {
	param ($msg)
	Write-Debug $msg
}

function PROCEED {
	$title = " "
	$question = 'Are you sure you want to proceed?'
	$choices  = '&Yes', '&No'

	$decision = $Host.UI.PromptForChoice($title, $question, $choices, 0)
	if ($decision -eq 1) {
		exit 1
	}
}
function LOG_TITLE {
	param ($msg)
	Write-Host ""
	Write-Host ""
	Write-Host "==============================="
	Write-Host " $msg"
	Write-Host "==============================="
	Write-Host ""
	Start-Sleep 1
}
function APP_KILL {
	param ( $app)
	LOG_EXE "APP_KILL $app"
	taskkill /IM $app /F /FI "STATUS eq RUNNING"
}
function RM_MK_DIR {
	param ( $dir)
	LOG_EXE "RM_MK_DIR $dir"
	Remove-Item -Recurse -Force -Path $dir -ErrorAction SilentlyContinue
	New-Item -ItemType Directory -Force -Path $dir | Out-Null
}
function STARTUP_BAT {
	param($app, $content)
	LOG_EXE "STARTUP_BAT $app.bat $content"
	$FILE = "$STARTUP_DIR\$app.bat"
	Remove-Item $FILE -ErrorAction SilentlyContinue
	New-Item $FILE | Out-Null
	Set-Content -Path $FILE -Value $content
}
function COPY_ITEM {
	param($src, $dest)
	LOG_EXE "COPY_ITEM $src $dest"
	Copy-Item -Recurse -Force -Path $src -Destination $dest
}
function APPS_ZIP {
	param ( $url, $app)
	LOG_EXE "APPS_ZIP $app $url"

	LOG "Download: $url"
	Invoke-WebRequest $url -OutFile "$TMP_DIR\$app.zip"

	RM_MK_DIR "$TMP_DIR\$app"
	LOG "Expanding: $TMP_DIR\$app.zip"	
	Expand-Archive "$TMP_DIR\$app.zip" -DestinationPath "$TMP_DIR\$app"

	COPY_ITEM -src "$TMP_DIR\$app" -dest $APPS_DIR
}

function Pin-App ([string]$appname, [switch]$unpin, [switch]$start, [switch]$taskbar, [string]$path) {
    if ($unpin.IsPresent) {
        $action = "Unpin"
    } else {
        $action = "Pin"
    }
    
    if (-not $taskbar.IsPresent -and -not $start.IsPresent) {
        Write-Error "Specify -taskbar and/or -start!"
    }
    
    if ($taskbar.IsPresent) {
        try {
            $exec = $false
            if ($action -eq "Unpin") {
                ((New-Object -Com Shell.Application).NameSpace('shell:::{4234d49b-0245-4df3-b780-3893943456e1}').Items() | ?{$_.Name -eq $appname}).Verbs() | ?{$_.Name.replace('&','') -match 'Unpin from taskbar'} | %{$_.DoIt(); $exec = $true}
                if ($exec) {
                    Write "App '$appname' unpinned from Taskbar"
                } else {
                    if (-not $path -eq "") {
                        Pin-App-by-Path $path -Action $action
                    } else {
                        Write "'$appname' not found or 'Unpin from taskbar' not found on item!"
                    }
                }
            } else {
                ((New-Object -Com Shell.Application).NameSpace('shell:::{4234d49b-0245-4df3-b780-3893943456e1}').Items() | ?{$_.Name -eq $appname}).Verbs() | ?{$_.Name.replace('&','') -match 'Pin to taskbar'} | %{$_.DoIt(); $exec = $true}
                
                if ($exec) {
                    Write "App '$appname' pinned to Taskbar"
                } else {
                    if (-not $path -eq "") {
                        Pin-App-by-Path $path -Action $action
                    } else {
                        Write "'$appname' not found or 'Pin to taskbar' not found on item!"
                    }
                }
            }
        } catch {
            Write-Error "Error Pinning/Unpinning $appname to/from taskbar!"
        }
    }
    
    if ($start.IsPresent) {
        try {
            $exec = $false
            if ($action -eq "Unpin") {
                ((New-Object -Com Shell.Application).NameSpace('shell:::{4234d49b-0245-4df3-b780-3893943456e1}').Items() | ?{$_.Name -eq $appname}).Verbs() | ?{$_.Name.replace('&','') -match 'Unpin from Start'} | %{$_.DoIt(); $exec = $true}
                
                if ($exec) {
                    Write "App '$appname' unpinned from Start"
                } else {
                    if (-not $path -eq "") {
                        Pin-App-by-Path $path -Action $action -start
                    } else {
                        Write "'$appname' not found or 'Unpin from Start' not found on item!"
                    }
                }
            } else {
                ((New-Object -Com Shell.Application).NameSpace('shell:::{4234d49b-0245-4df3-b780-3893943456e1}').Items() | ?{$_.Name -eq $appname}).Verbs() | ?{$_.Name.replace('&','') -match 'Pin to Start'} | %{$_.DoIt(); $exec = $true}
                
                if ($exec) {
                    Write "App '$appname' pinned to Start"
                } else {
                    if (-not $path -eq "") {
                        Pin-App-by-Path $path -Action $action -start
                    } else {
                        Write "'$appname' not found or 'Pin to Start' not found on item!"
                    }
                }
            }
        } catch {
            Write-Error "Error Pinning/Unpinning $appname to/from Start!"
        }
    }
}
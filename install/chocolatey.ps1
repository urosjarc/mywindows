LOG_TITLE "Update chocolatey"
choco upgrade chocolatey

LOG_TITLE "Install drivers"
choco install wacom-drivers -y
choco install autohotkey -y

LOG_TITLE "Install online tools"
choco install zoom -y

LOG_TITLE "Install editors"
choco install vscode -y
choco install epicgameslauncher -y

LOG_TITLE "Install programming tools"
choco install nodejs -y
choco install python -y
choco install oraclejdk -y
choco install mingw -y

LOG_TITLE "Install utils"
choco install git -y
choco install winrar -y
choco install meld -y

LOG_TITLE "Install fonts"
choco install cascadiacode -y
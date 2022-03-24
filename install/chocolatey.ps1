LOG_TITLE "Update chocolatey"
choco upgrade chocolatey

LOG_TITLE "Install drivers"
choco install wacom-drivers -y --ignore-checksums
choco install autohotkey -y --ignore-checksums

LOG_TITLE "Install online tools"
choco install zoom -y --ignore-checksums
choco install googlechrome -y --ignore-checksums

LOG_TITLE "Install editors"
choco install vscode -y --ignore-checksums
choco install epicgameslauncher -y --ignore-checksums
choco install blender -y --ignore-checksums
choco install postman -y --ignore-checksums
choco install steam-client -y --ignore-checksums

LOG_TITLE "Install programming tools"
choco install nodejs -y --ignore-checksums
choco install python -y --ignore-checksums
choco install oraclejdk -y --ignore-checksums
choco install mingw -y --ignore-checksums
choco install cmake -y --ignore-checksums
choco install make -y --ignore-checksums
choco install windows-sdk-10.1 --ignore-checksums

LOG_TITLE "Install utils"
choco install git -y --ignore-checksums
choco install winrar -y --ignore-checksums
choco install meld -y --ignore-checksums

LOG_TITLE "Install fonts"
choco install jetbrainsmono -y --ignore-checksums
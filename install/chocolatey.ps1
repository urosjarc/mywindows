LOG_TITLE "Update chocolatey"
choco upgrade chocolatey

LOG_TITLE "Install drivers"
choco install wacom-drivers -y --ignore-checksums
choco install autohotkey -y --ignore-checksums

LOG_TITLE "Install online tools"
choco install zoom -y --ignore-checksums
choco install googlechrome -y --ignore-checksums

LOG_TITLE "Install editors"
choco install jetbrainstoolbox -y --ignore-checksums
choco install postman -y --ignore-checksums
choco install vim -y --ignore-checksums

LOG_TITLE "Install programming tools"
choco install nodejs -y --ignore-checksums
choco install python -y --ignore-checksums
choco install oraclejdk -y --ignore-checksums
choco install cmake -y --ignore-checksums
choco install make -y --ignore-checksums
choco install mingw -y --ignore-checksums

LOG_TITLE "Install utils"
choco install git -y --ignore-checksums
choco install winrar -y --ignore-checksums
choco install meld -y --ignore-checksums

LOG_TITLE "Install media tools"
choco install paint.net -y --ignore-checksums
choco install vlc -y --ignore-checksums
choco install audacity -y --ignore-checksums
choco install obs-studio -y --ignore-checksums

LOG_TITLE "Install fonts"
choco install jetbrainsmono -y --ignore-checksums

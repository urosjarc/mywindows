# Set variables
$TMP_DIR = "./tmp"
$BUGN_VERSION = "v9.0.2"

# Init
rmdir -Recurse -Force $TMP_DIR
mkdir -Force $TMP_DIR

# Install exes
./scripts/exe.ps1

# Setup dependencies
./scripts/setup.ps1

# Install software
./scripts/chocolatey.ps1

# Install additional software
./scripts/npm.ps1
./scripts/pip.ps1

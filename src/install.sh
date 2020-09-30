#!/usr/bin/env bash
# Check if its root
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root"
   exit 1
fi

# Colours
BLUE='\e[34m'
BOLD='\e[1m'
RESET='\033[0m'
NC='\e[39m'
GREEN='\e[32m'
YELLOW='\e[33m'
RED='\033[0;31m'

# Download file
wget -q --show-progress -O /usr/local/bin/quickdir https://raw.githubusercontent.com/daniel071/quickdir/master/src/main.sh

# Add executable permission
chmod +x /usr/local/bin/quickdir

# Make some shortcuts
ln -s /usr/local/bin/quickdir /usr/local/bin/qd

echo -e "${GREEN}${BOLD}Install complete!${RESET}"

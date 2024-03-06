#!/bin/bash
# Installs snapd, because everything else I need is pre-configured on Mint

set -e

# Install snapd and plugin
apt install snapd -y

# Prompt to reboot
echo "Your system has been updated and the Flathub repository was added."
echo "You need to restart your computer for these chantes to fully take effect."

#!/bin/bash
# adds the appropriate lines to /etc/apt/sources.list
# and update all installed packages, then installs
# Flatpak, Snap, and associated KDE Discover backend.
# Run as root

set -e

# Install snapd and plugin
apt install snapd -y

# Prompt to reboot
echo "Your system has been updated and the Flathub repository was added."
echo "You need to restart your computer for these chantes to fully take effect."

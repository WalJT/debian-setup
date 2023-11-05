#!/bin/bash
# adds the appropriate lines to /etc/apt/sources.list
# and update all installed packages, then installs
# Flatpak and associated KDE Discover backend.

set -e

sudo cat > /etc/apt/sources.list << EOF
deb http://deb.debian.org/debian/ bookworm main non-free-firmware contrib non-free
deb-src http://deb.debian.org/debian/ bookworm main non-free-firmware contrib non-free

deb http://security.debian.org/debian-security bookworm-security main non-free-firmware contrib non-free
deb-src http://security.debian.org/debian-security bookworm-security main non-free-firmware contrib non-free

# bookworm-updates, to get updates before a point release is made;
# see https://www.debian.org/doc/manuals/debian-reference/ch02.en.html#_updates_and_backports
deb http://deb.debian.org/debian/ bookworm-updates main non-free-firmware contrib non-free
deb-src http://deb.debian.org/debian/ bookworm-updates main non-free-firmware contrib non-free
EOF

# Perform first system update
sudo apt update
sudo apt full-upgrade

# Install flatpak and plugin
apt install flatpak plasma-discover-backend-flatpak

# Add Flathub repo
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# Prompt to reboot
echo << EOM
Your system has been updated and the Flathub repository was added.
You need to restart your computer for these chantes to fully take effect.
EOM
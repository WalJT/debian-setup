#!/bin/bash
# Install software for high-end workloads
# (Games, photo & video processing ... )

set -e

# Add 32bit repos (Needed for Steam)
sudo dpkg --add-architecture i386

# Refresh the package cache
sudo apt update

# Steam
sudo apt install steam steam-devices -y

# Photo processing software
sudo apt install rapid-photo-downloader -y
flatpak install flathub com.rawtherapee.RawTherapee

# Video recording and processing
flatpak install flathub com.obsproject.Studio
flatpak install flathub org.kde.kdenlive
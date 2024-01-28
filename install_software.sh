#!/bin/bash
# Install stuff. Run as your user account

set -e

# Ensure binaries folder exists
mkdir -p $HOME/bin

# Add 32bit repos (Needed for Steam)
sudo dpkg --add-architecture i386

# Refresh the package cache
sudo apt update

# Make sure we have wget
sudo apt install wget -y

# git
sudo apt install git -y

# Fish shell
sudo apt install fish -y

# System information & diagnostics tools
sudo apt install inxi neofetch memtest86+ -y

# Chrome
# wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
# sudo apt install ./google-chrome-stable_current_amd64.deb -y
# rm ./google-chrome-stable_current_amd64.deb

# ffmpeg and yt-dlp
sudo apt install ffmpeg -y
pushd $HOME/bin
wget https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp
chmod +x yt-dlp
popd

# Complete LibreOffice
sudo apt install libreoffice -y

# LaTeX
sudo apt install texlive-{latex,fonts}-{recommended,extra} biber texlive-science kile -y

# Pandoc
sudo apt install pandoc -y

# Scanning software
sudo apt install simple-scan skanlite -y

# Miniconda
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash ./Miniconda3-latest-Linux-x86_64.sh -b -p $HOME/miniconda
rm ./Miniconda3-latest-Linux-x86_64.sh

# Configure git
git config --global credential.helper store

# Visual Studio Code
sudo snap install code --classic

# Libraries for DVD Playback
sudo apt install libdvdread8 libdvdnav4 libdvd-pkg -y
sudo dpkg-reconfigure libdvd-pkg

# VLC Media player and k3b (Disc burning utility)
sudo apt install vlc k3b -y

# Kodi
flatpak install flathub tv.kodi.Kodi -y

# Chat Apps
flatpak install flathub org.telegram.desktop -y
flatpak install flathub com.discordapp.Discord -y

# Steam
sudo apt install steam steam-devices -y

# Photo processing software
sudo apt install rapid-photo-downloader -y
flatpak install flathub com.rawtherapee.RawTherapee -y

# Video recording and processing
sudo apt install pipewire -y # Required for OBS
flatpak install flathub com.obsproject.Studio -y
flatpak install flathub org.kde.kdenlive -y

# Copy update script to appropriate location
cp dotfiles_and_scripts/up $HOME/bin/up

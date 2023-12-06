#!/bin/bash
# Install all the basic software I want on every laptop

set -e

# Refresh the package cache
sudo apt update

# Fish shell
sudo apt install fish -y

# System information tools
sudo apt install inxi neofetch -y

# Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb -y
rm ./google-chrome-stable_current_amd64.deb

# ffmpeg and yt-dlp
sudo apt install ffmpeg -y
mkdir $HOME/bin
wget https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp $HOME/bin/yt-dlp

# Complete LibreOffice
sudo apt install libreoffice -y

# LaTeX
sudo apt install texlive-{latex,fonts}-{recommended,extra} biber texlive-science kile -y

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

# Chat Apps
flatpak install flathub org.telegram.desktop -y
flatpak install flathub com.discordapp.Discord -y

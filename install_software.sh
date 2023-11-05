#!/bin/bash
# Install applications that I use on Debian.
# Assumes that your sources.list file has been configured,
# Flatpak & Flathub have been set up, and your system is up-to-date


# Refresh the repositories
sudo apt update

# Firefox
sudo apt remove firefox-esr --auto-remove --purge
flatpak install flathub app/org.mozilla.firefox/x86_64/stable

# Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb
rm ./google-chrome-stable_current_amd64.deb

# Miniconda
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash ./Miniconda3-latest-Linux-x86_64.sh
rm ./Miniconda3-latest-Linux-x86_64.sh

# LaTeX + Kile
sudo apt install texlive-{latex,fonts}-{recommended,extra} biber texlive-science kile
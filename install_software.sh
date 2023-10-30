#!/bin/bash
# Install applications that I use on Debian.
# Assumes that your sources.list file has been configured
# and your system is up-to-date

# Work in progress. Does not account for snap and flatpak setup

# Refresh the repositories
sudo apt update

# Firefox
sudo snap install firefox

# Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb
rm ./google-chrome-stable_current_amd64.deb

# Git
# sudo apt install git

# VSCode
sudo snap install code --classic

# Miniconda
# https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh

# LaTeX + Kile
sudo apt install texlive-{latex,fonts}-{recommended,extra} biber texlive-science kile
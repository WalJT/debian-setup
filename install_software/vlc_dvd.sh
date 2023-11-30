#!/bin/bash
# Install VLC media player, k3b, and DVD libraries

set -ex

# Libraries
sudo apt install libdvdread8 libdvdnav4 libdvd-pkg
sudo dpkg-reconfigure libdvd-pkg

# VLC Media player and k3b (Disc burning utility)
sudo apt install vlc k3b
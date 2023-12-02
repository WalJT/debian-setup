#!/bin/bash
# Set up 32bit repos and install steam

set -ex

sudo dpkg --add-architecture i386
sudo apt update
sudo apt install steam steam-devices -y
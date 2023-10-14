# Debian Setup

## Sources:

https://wiki.debian.org/SourcesList#Configuring_Apt_Sources

Also add contrib and non-free sections
Use `dpkg --add-architecture i386` to add 32bit repos (needed for Steam)

## Plymouth (fancy boot screen)

https://wiki.debian.org/plymouth

## Software installs

```bash
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
```


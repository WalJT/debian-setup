# Debian Setup

## Sources

<https://wiki.debian.org/SourcesList#Configuring_Apt_Sources>

Also add contrib and non-free sections. The following are the contents of my `sourcers.list` file:

```sh
deb http://deb.debian.org/debian/ bookworm main non-free-firmware contrib non-free
deb-src http://deb.debian.org/debian/ bookworm main non-free-firmware contrib non-free

deb http://security.debian.org/debian-security bookworm-security main non-free-firmware contrib non-free
deb-src http://security.debian.org/debian-security bookworm-security main non-free-firmware contrib non-free

# bookworm-updates, to get updates before a point release is made;
# see https://www.debian.org/doc/manuals/debian-reference/ch02.en.html#_updates_and_backports
deb http://deb.debian.org/debian/ bookworm-updates main non-free-firmware contrib non-free
deb-src http://deb.debian.org/debian/ bookworm-updates main non-free-firmware contrib non-free
```

Use `dpkg --add-architecture i386` to add 32bit repos (needed for Steam)

## Plymouth (fancy boot screen)

<https://wiki.debian.org/plymouth>

## Software installs

See `install_software.sh`

## Virtualisation Setup (quemu / KVM)

- <https://wiki.debian.org/KVM>
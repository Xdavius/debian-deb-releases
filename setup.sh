#!/bin/bash
cd /root

wget https://github.com/Xdavius/debian-deb-releases/releases/download/PACKAGES/firmware-amd-graphics_20240104-1.deb

echo "deb http://deb.debian.org/debian/ trixie main non-free-firmware non-free contrib" > /etc/apt/sources.list.d/sid.list
echo "Package : *
Pin : release a=unstable
Pin-Priority : -1
" > /etc/apt/preferences.d/sid

apt update -y
apt install -y linux-image-amd64 linux-headers-amd64

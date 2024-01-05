#!/bin/bash

wget https://github.com/Xdavius/debian-deb-releases/releases/download/PACKAGES/firmware-amd-graphics_20240104-1.deb

echo "deb http://deb.debian.org/debian/ sid main non-free-firmware non-free contrib" > /etc/apt/sources.list.d/sid.list
echo "Package : *
Pin : release a=unstable
Pin-Priority : -1
" > /etc/apt/preferences.d/sid

apt update -y
apt install -y -t sid linux-image-amd64 linux-headers-amd64
dpkg -i firmware-amd-graphics_20240104-1.deb

rm /etc/apt/sources.list.d/sid.list
rm /etc/apt/preferences.d/sid

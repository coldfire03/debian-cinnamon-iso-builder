#!/bin/bash
# Muslim Linux iso build profile.
git clone https://gitlab.com/tearch-linux/applications-and-tools/teaiso
cd teaiso
sudo apt update
sudo apt install xorriso grub-pc-bin grub-efi mtools make python3 dosfstools e2fsprogs squashfs-tools python3-yaml gcc wget curl unzip xz-utils zstd debootstrap -y
make && make install
ln -s sid /usr/share/debootstrap/scripts/yirmibir || true
cd ../
mkteaiso --profile=./muslim --output=/output/ --debug 2>&1

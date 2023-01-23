#!/bin/bash
# Muslim Linux iso build profile.
<<<<<<< Updated upstream:build.sh
#git clone https://gitlab.com/tearch-linux/applications-and-tools/teaiso
=======
>>>>>>> Stashed changes:teaiso/build.sh
git clone https://github.com/coldfire03/teaisol
cd teaisol
sudo apt update
sudo apt install xorriso grub-pc-bin grub-efi mtools make python3 dosfstools e2fsprogs squashfs-tools python3-yaml gcc wget curl unzip xz-utils zstd debootstrap -y
make && make install
ln -s sid /usr/share/debootstrap/scripts/yirmibir || true
cd ../
mkteaiso --profile=./debian-testing --output=/output/ --debug 2>&1

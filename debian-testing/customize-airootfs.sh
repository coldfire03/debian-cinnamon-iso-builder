#!/usr/bin/env bash
cd /tmp

### Drop no-recommend
rm /etc/apt/apt.conf.d/01norecommend

### Cleaning up excess
rm -rf /usr/share/backgrounds/gnome

### Install packages
apt install wget -y
apt install flatpak -y
apt install gnome-software-plugin-flatpak -y
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo 
###nvidia non-free

#wget https://github.com/coldfire03/debo/raw/main/cli-shell-utils_0.4.2%2B2_all.deb
#wget https://github.com/coldfire03/debo/raw/main/ddm-mx_22.12.01mx21_all.deb

wget https://github.com/coldfire03/debo/raw/main/xdman_gtk_8.0.18_amd64.deb

wget https://github.com/muslimos/17g-installer/releases/download/current/17g-installer_1.0_all.deb
wget https://github.com/muslimos/muslim-backgrounds/releases/download/current/muslim-backgrounds_1.0_all.deb
wget https://github.com/muslimos/debhane/raw/main/appimagelauncher_2.2.0.deb
wget https://github.com/muslimos/debhane/raw/main/qmplay2-05-02-23.deb
wget https://github.com/muslimos/debhane/raw/main/webapp-manager_1.2.8_all.deb
wget https://github.com/muslimos/debhane/raw/main/foliate_2.6.4_all.deb
wget https://github.com/muslimos/debhane/raw/main/papirus-teal-icon-theme.deb
wget https://github.com/muslimos/debhane/raw/main/pardus-lightdm-greeter_0.0.3_all.deb
wget https://github.com/muslimos/debhane/raw/main/system-monitoring-center_1.42.0_all.deb
wget http://depo.pardus.org.tr/pardus/pool/main/p/pardus-package-installer/pardus-package-installer_0.5.0~Beta2_all.deb


apt install ./*.deb -yq --allow-downgrades


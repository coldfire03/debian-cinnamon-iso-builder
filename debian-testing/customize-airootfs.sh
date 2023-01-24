#!/usr/bin/env bash
cd /tmp

### Drop no-recommend
rm /etc/apt/apt.conf.d/01norecommend

### Cleaning up excess
rm -rf /usr/share/backgrounds/gnome

### Install packages
apt install wget -y

wget http://www.deb-multimedia.org/pool/main/d/deb-multimedia-keyring/deb-multimedia-keyring_2016.8.1_all.deb
apt install ./deb-multimedia-keyring*.deb -y
echo 'deb http://www.deb-multimedia.org testing main non-free' | tee /etc/apt/sources.list.d/deb-multimedia.list && apt update

### 17g installer
wget https://github.com/muslimos/17g-installer/releases/download/current/17g-installer_1.0_all.deb

###nvidia non-free

wget https://github.com/coldfire03/debo/raw/main/cli-shell-utils_0.4.2%2B2_all.deb
wget https://github.com/coldfire03/debo/raw/main/ddm-mx_22.12.01mx21_all.deb
### mx-tools

wget https://github.com/coldfire03/debo/raw/main/eyesaver_1.0.0_all.deb
wget https://github.com/coldfire03/debo/raw/main/xdman_gtk_8.0.18_amd64.deb

## Firefox latest User Installer
wget https://github.com/muslimos/debhane/raw/main/firefox_user_installer_0.1.0_amd64.deb

###chrome
#wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | apt-key add -
#echo 'deb [arch=amd64] https://dl.google.com/linux/chrome/deb/ stable main' && apt update
#apt install google-chrome-stable -y

## Webapp Manager
wget https://github.com/muslimos/debhane/raw/main/webapp-manager_1.2.8_all.deb

### AppImage launcher
wget https://github.com/muslimos/debhane/raw/main/appimagelauncher_2.2.0.deb

## QMPlay2 Video and Sound Player
wget https://github.com/muslimos/debhane/raw/main/qmplay2-22-10-23-amd64.deb

## Foliate reader
wget https://github.com/muslimos/debhane/raw/main/foliate_2.6.4_all.deb

### pardus lightdm greeter
#wget https://github.com/coldfire03/pardus-lightdm-greeter/releases/download/current/pardus-lightdm-greeter_0.0.1_all.deb

### muslim backgrounds
wget https://github.com/muslimos/muslim-backgrounds/releases/download/current/muslim-backgrounds_1.0_all.deb

### System Monitoring Center
wget https://github.com/coldfire03/debo/raw/main/system-monitoring-center_1.39.1_all.deb

## Papirus-teal-icons
wget https://github.com/muslimos/debhane/raw/main/papirus-teal-icon-theme.deb
wget https://github.com/muslimos/debhane/raw/main/muslim-grub-theme.deb
wget https://github.com/muslimos/debhane/raw/main/pardus-lightdm-greeter_0.0.3_all.deb

### Pardus package installer
wget http://depo.pardus.org.tr/pardus/pool/main/p/pardus-package-installer/pardus-package-installer_0.5.0~Beta2_all.deb

apt install ./*.deb -yq --allow-downgrades


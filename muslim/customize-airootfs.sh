#!/usr/bin/env bash
cd /tmp

### Instally 17g
apt install wget
wget https://github.com/muslimos/17g-installer/releases/download/current/17g-installer_1.0_all.deb
apt install ./*.deb -yq --allow-downgrades

### pardus lightdm greeter
wget https://github.com/muslimos/muslim-lightdm-greeter/releases/download/current/pardus-lightdm-greeter_0.0.1_all.deb
apt install ./pardus-lightdm-greeter_0.0.1_all.deb -y

## QMPlay2
wget http://depo.pardus.org.tr/pardus/pool/contrib/q/qmplay2/qmplay2_22.10.23-1~par21_amd64.deb
apt install ./qmplay2_22.10.23-1~par21_amd64.deb -y

## Apimagelauncher
wget http://depo.pardus.org.tr/pardus/pool/contrib/a/appimagelauncher/appimagelauncher_2.2.0-travis995.0f91801.bionic_amd64.deb
apt install ./appimagelauncher_2.2.0-travis995.0f91801.bionic_amd64.deb -y

## Webapp Manager
wget https://github.com/mobilturka/mt-repo/raw/main/deb/webapp-manager_1.2.8_all.deb
apt install ./webapp-manager_1.2.8_all.deb -y

## Koodo reader
wget https://github.com/troyeguo/koodo-reader/releases/download/v1.5.1/Koodo.Reader-1.5.1.deb
apt install ./Koodo.Reader-1.5.1.deb -y

#wget https://github.com/muslimos/muslim-about/releases/download/current/pardus-about_0.5.0_all.deb
#apt install ./pardus-about_0.5.0_all.deb -y


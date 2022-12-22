#!/usr/bin/env bash
cd /tmp

#### Disable recommends by default
cat > /etc/apt/apt.conf.d/01norecommend << EOF
APT::Install-Recommends "0";
APT::Install-Suggests "0";
EOF

### Cleaning up excess
rm -rf /usr/share/backgrounds/gnome

### Install packages
apt install wget
### 17g installer
wget https://github.com/muslimos/17g-installer/releases/download/current/17g-installer_1.0_all.deb
### pardus lightdm greeter
wget https://github.com/muslimos/pardus-lightdm-greeter/releases/download/current/pardus-lightdm-greeter_0.0.1_all.deb
## QMPlay2
wget http://depo.pardus.org.tr/pardus/pool/contrib/q/qmplay2/qmplay2_22.10.23-1~par21_amd64.deb
## Webapp Manager
wget https://github.com/mobilturka/mt-repo/raw/main/deb/webapp-manager_1.2.8_all.deb
## Koodo reader
wget https://github.com/troyeguo/koodo-reader/releases/download/v1.5.1/Koodo.Reader-1.5.1.deb
### muslim backgrounds
wget https://github.com/muslimos/muslim-backgrounds/releases/download/current/muslim-backgrounds_1.0_all.deb
### papirus folder
apt install ./*.deb -yq --allow-downgrades

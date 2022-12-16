#!/usr/bin/env bash
cd /tmp

### Instally 17g
apt install wget
wget https://github.com/mobilturka/17g-installer/raw/master/17g-installer_1.0_all.deb
apt install ./*.deb -yq --allow-downgrades

#### Disable recommends by default
cat > /etc/apt/apt.conf.d/01norecommend << EOF
APT::Install-Recommends "0";
APT::Install-Suggests "0";
EOF

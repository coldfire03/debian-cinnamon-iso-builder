#!/usr/bin/env bash
cd /tmp

### Instally 17g
apt install wget
wget https://github.com/mobilturka/17g-installer/raw/master/17g-installer_1.0_all.deb
apt install ./*.deb -yq --allow-downgrades

## qmplay
wget http://depo.pardus.org.tr/pardus/pool/contrib/q/qmplay2/qmplay2_22.10.23-1~par21_amd64.deb
apt install ./qmplay2_22.10.23-1~par21_amd64.deb -y

#### Disable recommends by default
cat > /etc/apt/apt.conf.d/01norecommend << EOF
APT::Install-Recommends "0";
APT::Install-Suggests "0";
EOF

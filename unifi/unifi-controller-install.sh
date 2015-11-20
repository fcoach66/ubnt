#!/bin/bash

sed -i "s|deb cdrom|#deb cdrom|g" /etc/apt/sources.list
echo "" >> /etc/apt/sources.list
echo "deb http://www.ubnt.com/downloads/unifi/debian stable ubiquiti" >> /etc/apt/sources.list
echo "" >> /etc/apt/sources.list
echo "deb http://downloads-distro.mongodb.org/repo/debian-sysvinit dist 10gen" /etc/apt/sources.list
apt-key adv --keyserver keyserver.ubuntu.com --recv C0A52C50 -y
apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10 -y
apt-get update
apt-get install -y unifi


#!/bin/sh

alias alp="./alproot.sh"

# Setup Alproot env
cd alproot 
./alproot-setup.sh 
# ./alproot.sh apk add alpine-sdk xz g++ libtool make gcc musl-dev binutils autoconf automake pkgconfig check-dev file patch git lzo-dev libcap-ng libcap-ng-dev zstd zstd-dev libarchive libarchive-dev ninja

# Debian package on Alpine. Bad idea(?)
alp apk add alpine-sdk xz g++ libcap-ng libcap-ng-dev zstd zstd-dev lzo lzo-dev bash
alp wget http://ftp.debian.org/debian/pool/main/i/icecc/icecc_1.4-1_amd64.deb
alp ar x icecc*.deb
alp tar -xJvf data.tar.xz
alp rm -rf *.tar.xz debian-binary *.deb

alp PATH=/bin:/usr/bin:/usr/sbin:/usr/local/bin:$PATH iceccd -d
# alp rm -rf *.xz *.deb

# cp -vr ../scripts env

# ./alproot.sh ./scripts/install-icecream.shhttp://ftp.debian.org/debian/pool/main/i/icecc/icecc_1.4-1_amd64.deb

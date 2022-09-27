#!/bin/sh

# Setup Alproot env
cd alproot && ./alproot-setup.sh
./alproot.sh apk add alpine-sdk xz g++ libtool make gcc musl-dev binutils autoconf automake pkgconfig check-dev file patch git lzo-dev libcap-ng libcap-ng-dev zstd zstd-dev libarchive libarchive-dev

cp -vr ../scripts env

./alproot.sh ./scripts/install-icecream.sh

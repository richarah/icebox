#!/bin/sh

# Setup Alproot env
cd alproot && ./alproot-setup.sh
./alproot.sh apk add alpine-sdk xz-utils make

cp -vr ../scripts env

./alproot.sh ./scripts/install-icecream.sh

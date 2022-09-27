#!/bin/sh

# Setup Alproot env
cd alproot && ./alproot-setup.sh
./alproot.sh apk add alpine-sdk

cp -vr ../scripts env

./alproot.sh ./scripts/install-icecream.sh

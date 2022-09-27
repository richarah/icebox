#!/bin/sh

cd alproot && ./alproot-setup.sh

cp -vr ../scripts alproot/env/scripts

./alproot.sh ./scripts/install-icecream.sh

#!/bin/sh

# For some reason, the build uses absolute paths. This complicates things.
cd /
wget https://github.com/icecc/icecream/releases/download/1.4/icecc-1.4.0.tar.gz
tar -xzvf icecc-1.4.0.tar.gz
cd icecc-1.4.0
libtoolize 
aclocal 
autoheader 
automake --add-missing 
autoconf
autoreconf -i
./configure
make -j$(nproc) -i
make -j$(nproc) -i install
cd ..
rm -rf icecc-1.4.0

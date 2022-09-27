#!/bin/sh

git clone https://github.com/richarah/icecream
cd icecream
libtoolize
autoreconf
automake --add-missing
./configure
make -j$(nproc)
make -j$(nproc) install
cd ..
rm -rf icecream

#!/bin/sh

mkdir build
cd build
wget https://github.com/richarah/icecream/releases/download/testing/icecream.tar.xz
tar -xvf icecream.tar.xz
make install
cd ..
rm -rf build

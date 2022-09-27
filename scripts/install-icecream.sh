#!/bin/sh

mkdir build
wget https://github.com/richarah/icecream/releases/download/testing/icecream.tar.xz
tar -xvf icecream.tar.xz -C build
cd build && make install
rm -rf build

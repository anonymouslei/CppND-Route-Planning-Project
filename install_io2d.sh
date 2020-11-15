#!/bin/bash

sudo apt update
sudo apt install build-essential
sudo apt install cmake
sudo apt install libcairo2-dev
sudo apt install libgraphicsmagick1-dev
sudo apt install libpng-dev

cd thirdparty
git clone --recurse-submodules https://github.com/cpp-io2d/P0267_RefImpl
cd P0267_RefImpl
mkdir Debug
cd Debug
cmake --config Debug "-DCMAKE_BUILD_TYPE=Debug" ..
cmake --build .
sudo make install

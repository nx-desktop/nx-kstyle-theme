#! /bin/bash

### Use this script to build locally.

set -x

mkdir -p src-rename/build

cp -R {cmake,colors,kdecoration,kstyle,liblightlycommon,misc,CMakeLists.txt,LightlyConfig.cmake.in} src-rename
 
find src-rename/ -execdir rename 's/lightly/nitrux/' '{}' \+
find src-rename/ -execdir rename 's/Lightly/Nitrux/' '{}' \+

find src-rename/ -type f -exec sed -i 's/lightly/nitrux/g' {} +
find src-rename/ -type f -exec sed -i 's/Lightly/Nitrux/g' {} +
find src-rename/ -type f -exec sed -i 's/LIGHTLY/NITRUX/g' {} +

cd src-rename/build/

cmake -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_INSTALL_LIBDIR=lib -DBUILD_TESTING=OFF ..

make

sudo make install

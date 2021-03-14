#!bin/sh
mkdir rename
cp -R {cmake,colors,kdecoration,kstyle,liblightlycommon,misc,CMakeLists.txt,LightlyConfig.cmake.in} rename/
cd rename
find . -execdir rename 'lightly' 'nitrux' '{}' \+
find . -execdir rename 'Lightly' 'Nitrux' '{}' \+
find . -type f -exec sed -i 's/Lightly/Nitrux/g' {} +
find . -type f -exec sed -i 's/lightly/nitrux/g' {} +
find . -type f -exec sed -i 's/LIGHTLY/NITRUX/g' {} +
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_INSTALL_LIBDIR=lib -DBUILD_TESTING=OFF ..
make
sudo make install
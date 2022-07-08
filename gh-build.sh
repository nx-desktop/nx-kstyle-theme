#!/bin/bash

set -x

apt -qq update
apt -qq -yy install equivs curl git wget gnupg2

### Install Dependencies

DEBIAN_FRONTEND=noninteractive apt -qq -yy install --no-install-recommends devscripts debhelper gettext lintian build-essential automake autotools-dev cmake extra-cmake-modules rename

mk-build-deps -i -t "apt-get --yes" -r

###	Rename files, folders and change strings

find . -execdir rename 's/lightly/nitrux/' '{}' \+
find . -execdir rename 's/Lightly/Nitrux/' '{}' \+

find . -type f -exec sed -i 's/lightly/nitrux/g' {} +
find . -type f -exec sed -i 's/Lightly/Nitrux/g' {} +
find . -type f -exec sed -i 's/LIGHTLY/NITRUX/g' {} +

### Build Deb

mkdir source
mv ./* source/ # Hack for debuild
cd source
debuild -b -uc -us

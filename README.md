# Nitrux KStyle [![Build Status](https://travis-ci.org/nx-desktop/nx-kstyle-theme.svg?branch=master)](https://travis-ci.org/nx-desktop/nx-kstyle-theme)

*Nitrux* is a fork of the Lightly theme style customized to provide the styling of the Nitrux Kvantum themes. 

## Installation

## Manual installation

#### Ubuntu
```
sudo apt install build-essential libkf5config-dev libkdecorations2-dev libqt5x11extras5-dev qtdeclarative5-dev extra-cmake-modules libkf5guiaddons-dev libkf5configwidgets-dev libkf5windowsystem-dev libkf5coreaddons-dev libkf5iconthemes-dev gettext
```

#### Arch Linux
```
sudo pacman -S cmake extra-cmake-modules kdecoration qt5-declarative qt5-x11extras
```

#### Fedora
```
sudo dnf install cmake extra-cmake-modules "cmake(Qt5Core)" "cmake(Qt5Gui)" "cmake(Qt5DBus)" "cmake(Qt5X11Extras)" "cmake(KF5GuiAddons)" "cmake(KF5WindowSystem)" "cmake(KF5I18n)" "cmake(KDecoration2)" "cmake(KF5CoreAddons)" "cmake(KF5ConfigWidgets)" "cmake(Qt5UiTools)" "cmake(KF5GlobalAccel)" "cmake(KF5IconThemes)" kwin-devel libepoxy-devel "cmake(KF5Init)" "cmake(KF5Crash)" "cmake(KF5KIO)" "cmake(KF5Notifications)" kf5-kpackage-devel
```

#### openSUSE
```
sudo zypper install cmake gcc-c++ extra-cmake-modules libQt5Gui-devel libQt5DBus-devel libqt5-qttools-devel libqt5-qtx11extras-devel libQt5OpenGL-devel libQt5Network-devel libepoxy-devel kconfig-devel kconfigwidgets-devel kcrash-devel kglobalaccel-devel ki18n-devel kio-devel kservice-devel kinit-devel knotifications-devel kwindowsystem-devel kguiaddons-devel kiconthemes-devel kpackage-devel kwin5-devel xcb-util-devel xcb-util-cursor-devel xcb-util-wm-devel xcb-util-keysyms-devel
```

#### Solus
```
sudo eopkg install extra-cmake-modules kdecoration-devel qt5-declarative-devel qt5-x11extras-devel qt5-base-devel kcoreaddons-devel kguiaddons-devel kconfigwidgets-devel kwindowsystem-devel ki18n-devel kiconthemes-devel kcmutils-devel libxcb-devel xcb-util-devel qt5-wayland-devel kwayland-devel wayland-devel frameworkintegration-devel
```


### Build and install

```
git clone --single-branch --depth=1 https://github.com/nx-desktop/nx-kstyle-theme.git
cd Lightly && mkdir build && cd build
cmake -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_INSTALL_LIBDIR=lib -DBUILD_TESTING=OFF ..
make
sudo make install
```

### Uninstall

In the build folder:
```
sudo make uninstall
```

## Acknowledgments

Breeze authors, Kvantum developer Pedram Pourang, Luwx.


# Issues
If you find problems with the contents of this repository please create an issue.

©2020 Nitrux Latinoamericana S.C.


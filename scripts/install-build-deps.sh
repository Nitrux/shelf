#!/bin/bash

if [ "$EUID" -ne 0 ]; then
    APT_COMMAND="sudo apt"
else
    APT_COMMAND="apt"
fi

BUILD_DEPS='
    appstream
    automake
    autotools-dev
    build-essential
    checkinstall
    cmake
    curl
    devscripts
    equivs
    extra-cmake-modules
    gettext
    git
    gnupg2
    libkf6config-dev
    libkf6coreaddons-dev
    libkf6i18n-dev
    libkf6kio-dev
    libkf6notifications-dev
    libpoppler-dev
    libpoppler-qt6-dev
    lintian
    qml-module-qtgraphicaleffects
    qml-module-qtquick-controls2
    qml-module-qtquick-shapes
    qt6-base-dev
    qt6-declarative-dev
    qt6-multimedia-dev
'

$APT_COMMAND update -q
$APT_COMMAND install -y - --no-install-recommends $BUILD_DEPS
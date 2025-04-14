#! /bin/bash

export PACKAGE_INSTALLATION_ROOT=${PACKAGE_INSTALLATION_ROOT:-/mnt/ala/software/ext_packages}

export PACKAGE_NAME=llvm
export PACKAGE_VERSION=20.1.2
export MAKE_THREADS=28


install_path=$PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION

# copy over precompiled files
mkdir -p $install_path
cp -r llvm-project/* $install_path

cp package.py $install_path

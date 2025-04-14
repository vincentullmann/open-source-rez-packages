#! /bin/bash

source version.sh

export PACKAGE_INSTALLATION_ROOT=${PACKAGE_INSTALLATION_ROOT:-/mnt/ala/software/ext_packages}

export PACKAGE_NAME=openexr
export PACKAGE_VERSION=${VERSION}
export PACKAGE_VARIANT=platform-linux/arch-x86_64/python-3.11
export MAKE_THREADS=28

rez-env cmake-3 devtoolset Imath python-3.11 -c ./_rezbuild_.sh

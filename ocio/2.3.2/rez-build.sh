#! /bin/bash

source version.sh

# this will build and install the rez package locally (default is ~/packages)
rez-build -i -- \
    -DOCIO_INSTALL_EXT_PACKAGES=ALL \
    -DOCIO_BUILD_TESTS=OFF \
    -DOCIO_BUILD_GPU_TESTS=OFF \
    -DOCIO_BUILD_PYTHON=OFF \    # for now

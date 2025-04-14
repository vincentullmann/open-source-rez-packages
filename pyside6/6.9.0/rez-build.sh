#! /bin/bash

# this will build and install the rez package locally (default is ~/packages)
rez env python-3.10 cmake-3 qt-6.9.0 llvm-9 openssl devtoolset-7 -c ./build.sh

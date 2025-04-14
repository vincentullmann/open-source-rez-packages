#! /bin/bash

source version.sh

wget https://github.com/AcademySoftwareFoundation/openexr/archive/refs/tags/v${VERSION}.tar.gz
tar -xvf v${VERSION}.tar.gz

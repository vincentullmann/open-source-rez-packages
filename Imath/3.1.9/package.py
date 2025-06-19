# -*- coding: utf-8 -*-

name = 'Imath'

version = '3.1.9.3'

build_requires = ['cmake-3.16+', 'devtoolset']

variants = [
    # CY2022 ?
    ['python-3.9', 'boost-1.72', 'numpy-1.20'],
    ['python-3.9', 'boost_katana-1.76', 'numpy-1.20'],
    ['python-3.9', 'boost-1.76', 'numpy-1.20'],

    # CY2023
    ['python-3.10', 'boost-1.72'],
    ['python-3.10', 'boost-1.80'],

    # CY2024
    ['python-3.11', 'boost-1.82', 'numpy-1.24'],

    # CY2025
    ['python-3.11', 'boost-1.85', 'numpy-1.26'],
]

def commands():
    env.LD_LIBRARY_PATH.append('{this.root}/lib64')
    env.LD_LIBRARY_PATH.append('{this.root}/lib')
    env.Imath_DIR.set('{root}/lib64/cmake/Imath')
    env.IMATH_ROOT_DIR.set('{root}')

    appendenv('PKG_CONFIG_PATH', '{root}/lib/pkgconfig/')
    env.CMAKE_PREFIX_PATH.append("{root}")

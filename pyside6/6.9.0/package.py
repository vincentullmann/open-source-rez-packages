# -*- coding: utf-8 -*-

name = 'pyside6'

version = '6.9.0'

build_requires = ['python-3.10', 'qt-6.9.0', 'llvm-9', 'openssl']
private_build_requires = ['devtoolset-7+','cmake-3']

def commands():
    env.PATH.append('{this.root}/bin')
    env.LD_LIBRARY_PATH.append('{this.root}/lib')
    env.XDG_DATA_DIRS.append('{this.root}/share')
    env.PYTHONPATH.append('{this.root}/lib/python3.10/site-packages')


cmake_minimum_required (VERSION 2.8)

include(RezBuild)
rez_find_packages(PREFIX pkgs AUTO)

# make set stick in subdirectories:
macro(set_option option value)
  set(${option} ${value} CACHE INTERNAL "" FORCE)
endmacro()
# http://edsiper.linuxchile.cl/blog/2016/01/08/cmake-override-subdirectory-options/

set_option(BOOST_ROOT $ENV{REZ_BOOST_ROOT})
set_option(IMATH_ROOT $ENV{REZ_IMATH_ROOT})

set_option(USE_PYALEMBIC FALSE)  # until I resolve the 3.12 vs 3.11 issues
# set_option(LIBPYTHON_VERSION $ENV{REZ_PYTHON_VERSION})
# set(Python3_EXECUTABLE $ENV{Python_EXECUTABLE})

set_option(BUILD_STATIC_LIBS FALSE)
set_option(BUILD_SHARED_LIBS TRUE)

set_option(CMAKE_SOURCE_DIR ${CMAKE_SOURCE_DIR}/alembic-1.8.8)
add_subdirectory("alembic-1.8.8")

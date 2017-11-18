cmake_minimum_required(VERSION 3.6)
project(archmage_bullet)

include(ExternalProject)

ExternalProject_Add(bullet
  GIT_REPOSITORY https://github.com/bulletphysics/bullet3.git
  GIT_TAG 6e4707df5fa1f9927109e89a7cd2a6d6a6ddd072
  CMAKE_ARGS
  -DCMAKE_INSTALL_PREFIX=${CMAKE_INSTALL_PREFIX}
  -DBUILD_SHARED_LIBS=OFF
  -DUSE_GRAPHICAL_BENCHMARK=OFF
  -DBUILD_CPU_DEMOS=OFF
  -DUSE_GLUT=OFF
  -DBUILD_BULLET2_DEMOS=OFF
  -DBUILD_EXTRAS=OFF
  -DBUILD_UNIT_TESTS=OFF
  )
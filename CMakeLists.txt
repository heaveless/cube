cmake_minimum_required(VERSION 3.27)

project(cube)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)
set(CMAKE_CXX_COMPILER clang++)

add_executable(cube ${CMAKE_SOURCE_DIR}/cube.cpp)
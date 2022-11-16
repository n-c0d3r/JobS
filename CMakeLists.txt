cmake_minimum_required(VERSION 3.10)



project(JobS)

set_property(GLOBAL PROPERTY USE_FOLDERS ON)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_C_STANDARD 17)



set(JOBS_CMAKE_DIR ${CMAKE_SOURCE_DIR}/CMake)
set(JOBS_BINARY_DIR ${CMAKE_BINARY_DIR}/JobS/$<CONFIG>)



add_subdirectory(JobS)
add_subdirectory(Samples)
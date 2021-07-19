cmake_minimum_required(VERSION 3.10)

set(This CPPMatrixLib)

project(${This} C CXX)

set(CMAKE_C_STANDARD 99)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_POSITION_INDEPENDENT_CODE ON)

enable_testing()

include_directories(
	include/matrix
	include/polynomial
)

add_subdirectory(tests)
add_subdirectory(src)
add_subdirectory(extern/googletest)
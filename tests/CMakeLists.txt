cmake_minimum_required(VERSION 3.10)

set(This tests)

add_subdirectory(matrix)
add_subdirectory(polynomial)

set(Headers
	matrix/test1.hpp
	polynomial/test1.hpp
)

set(Sources
	matrix/test1.cpp
	polynomial/test1.cpp
)

add_executable(${This} ${Sources})
target_link_libraries(${This} PUBLIC
	gtest_main
	CPPMatrixLib_lib
)	
	
add_test(
	NAME ${This}
	COMMAND ${This}
)

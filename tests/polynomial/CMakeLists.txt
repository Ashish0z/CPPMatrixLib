cmake_minimum_required(VERSION 3.10)

set(This polynomial)

set(Headers
	test1.hpp
)

set(Sources
	test1.cpp
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
set(BINARY ${CMAKE_PROJECT_NAME})

set(HEADER_LIST 
    "${PROJECT_SOURCE_DIR}/include/matrix/matrix.hpp"
    "${PROJECT_SOURCE_DIR}/include/matrix/matrix_utility.hpp"
    "${PROJECT_SOURCE_DIR}/include/polynomial/polynomial.hpp"
	"${PROJECT_SOURCE_DIR}/include/polynomial/polynomial_utility.hpp"
)

set(SOURCES
    ${HEADER_LIST}
    "matrix_main.cpp"
)

add_executable(${BINARY}_run ${SOURCES})

add_library(${BINARY}_lib matrix_main.cpp ${HEADER_LIST})

target_include_directories(${BINARY}_lib PUBLIC ../include)

target_link_libraries(${BINARY}_lib)

target_compile_features(${BINARY}_lib PUBLIC cxx_std_11)
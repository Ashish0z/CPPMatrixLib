set(BINARY ${CMAKE_PROJECT_NAME}_tests)

set(Sources

    MatrixTests.cpp
    main.cpp
)

add_executable(${BINARY} ${Sources})

target_link_libraries(${BINARY} PUBLIC
    gtest
    ${CMAKE_PROJECT_NAME}_lib
)

add_test(

    NAME ${BINARY}
    COMMAND ${BINARY}
)
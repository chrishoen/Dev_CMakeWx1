cmake_minimum_required (VERSION 3.8)

add_executable (Project1 "Project1.cpp" "stdafx.cpp")

my_set_compile_options(Project1)
my_add_precompiled_header(Project1 stdafx.h)

target_link_libraries(Project1 ws2_32)

message(STATUS "Dir1**************************" ${CMAKE_CFG_INTDIR})
message(STATUS "Dir2**************************" ${CMAKE_CURRENT_BINARY_DIR})
message(STATUS "Flags*************************" ${CMAKE_CXX_FLAGS})


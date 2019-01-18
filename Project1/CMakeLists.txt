cmake_minimum_required (VERSION 3.8)

project (Project1 CXX)
file(GLOB SRC_FILES RELATIVE ${PROJECT_SOURCE_DIR} *.cpp)
add_executable (Project1 ${SRC_FILES})

my_set_compile_options(Project1)
my_add_precompiled_header(Project1 stdafx.h)

target_link_libraries(Project1 ws2_32)


# debug messages
get_target_property(PROP_SOURCE Project1 SOURCES)
message(STATUS "Project    SourceDir*********************" ${PROJECT_SOURCE_DIR})
message(STATUS "Project1   Source************************" ${SRC_FILES})
message(STATUS "Project1   Source************************" ${PROP_SOURCE})


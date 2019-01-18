cmake_minimum_required (VERSION 3.8)

project (MyProject1 CXX)
file(GLOB SRC_FILES RELATIVE ${PROJECT_SOURCE_DIR} *.cpp)
add_executable (MyProject1 ${SRC_FILES})
my_set_compile_options(MyProject1)
my_add_precompiled_header(MyProject1 stdafx.h)

target_include_directories(MyProject1 PRIVATE MyLibrary1)
target_link_libraries(MyProject1 MyLibrary1)

# debug messages
get_target_property(PROP_SOURCE MyProject1 SOURCES)
message(STATUS "MyProject1 SourceDir*********************" ${PROJECT_SOURCE_DIR})
message(STATUS "MyProject1 Source************************" ${SRC_FILES})
message(STATUS "MyProject1 Source************************" ${PROP_SOURCE})


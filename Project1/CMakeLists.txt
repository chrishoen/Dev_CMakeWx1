cmake_minimum_required (VERSION 3.8)

project (Project1 CXX)

file(GLOB SRC_FILES RELATIVE ${PROJECT_SOURCE_DIR} *.cpp)
add_executable (Project1 ${SRC_FILES})

set_target_properties(Project1 PROPERTIES COMPILE_FLAGS "/Yustdafx.h")
set_target_properties(Project1 PROPERTIES COMPILE_FLAGS "/Fp${PROJECT_BINARY_DIR}\\Project1.pch")
set_source_files_properties(stdafx.cpp PROPERTIES COMPILE_FLAGS "/Ycstdafx.h")

target_link_libraries(Project1 ws2_32)

# debug messages
get_target_property(PROP_SOURCE Project1 SOURCES)
message(STATUS "Project    SourceDir*********************" ${PROJECT_SOURCE_DIR})
message(STATUS "Project1   Source************************" ${SRC_FILES})
message(STATUS "Project1   Source************************" ${PROP_SOURCE})
message(STATUS "PROJECT_BINARY_DIR***********************" ${PROJECT_BINARY_DIR})


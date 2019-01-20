cmake_minimum_required (VERSION 3.8)

project (Project1 CXX)

file(GLOB src_list RELATIVE ${PROJECT_SOURCE_DIR} *.cpp)
message(STATUS "Project1****************************************")
message(STATUS "src_list************************" ${src_list})

foreach( src_file ${src_list} )
   GET_FILENAME_COMPONENT(src_name ${src_file} NAME)
   message(STATUS "src_file*********************" ${src_file})
   message(STATUS "src_file*********************" ${src_name})
endforeach()

add_executable (Project1 ${src_list})

#set_target_properties(Project1 PROPERTIES COMPILE_FLAGS "/Yustdafx.h")
#set_target_properties(Project1 PROPERTIES COMPILE_FLAGS "/Fp${PROJECT_BINARY_DIR}\\Project1.pch")
#set_source_files_properties(stdafx.cpp PROPERTIES COMPILE_FLAGS "/Ycstdafx.h")

target_link_libraries(Project1 ws2_32)

# debug messages
return()
get_target_property(PROP_SOURCE Project1 SOURCES)
message(STATUS "Project    SourceDir*********************" ${PROJECT_SOURCE_DIR})
message(STATUS "Project1   Source************************" ${src_list})
message(STATUS "Project1   Source************************" ${PROP_SOURCE})
message(STATUS "PROJECT_BINARY_DIR***********************" ${PROJECT_BINARY_DIR})


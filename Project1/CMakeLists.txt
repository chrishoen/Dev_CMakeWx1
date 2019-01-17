cmake_minimum_required (VERSION 3.8)

add_executable (Project1 "Project1.cpp" "stdafx.cpp")

#set_target_properties(Project1 PROPERTIES COMPILE_FLAGS "/Yustdafx.h")
#set_source_files_properties(stdafx.cpp PROPERTIES COMPILE_FLAGS "/Ycstdafx.h /Fpstdafx.pch")

#set_target_properties (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /Yustdafx.h /FIstdafx.h")
#set_source_files_properties(stdafx.cpp PROPERTIES COMPILE_FLAGS "/Ycstdafx.h")

target_link_libraries(Project1 ws2_32)

cmake_minimum_required (VERSION 3.8)

include(PrecompiledHeader.cmake)

add_executable (Project1 "Project1.cpp" "stdafx.cpp")

add_precompiled_header(Project1 stdafx.h)



#set_target_properties(Project1 PROPERTIES COMPILE_FLAGS "/Yustdafx.h")
#set_source_files_properties(stdafx.cpp PROPERTIES COMPILE_FLAGS "/Ycstdafx.h")

#set_target_properties (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /Yustdafx.h /FIstdafx.h")
#set_source_files_properties(stdafx.cpp PROPERTIES COMPILE_FLAGS "/Ycstdafx.h")

target_link_libraries(Project1 ws2_32)

message(STATUS "Dir1**************************" ${CMAKE_CFG_INTDIR})
message(STATUS "Dir2**************************" ${CMAKE_CURRENT_BINARY_DIR})


cmake_minimum_required (VERSION 3.8)

project (Project1 CXX)

file(GLOB src_list RELATIVE ${PROJECT_SOURCE_DIR} *.cpp)
add_executable (Project1 ${src_list})

message(STATUS "Project1**************************************** ${PROJECT_NAME}")
message(STATUS "src_list************************" ${src_list})

foreach(src_file ${src_list})
   if(${src_file} MATCHES "stdafx.cpp") 
      message(STATUS "src_fileEQ*******************" ${src_file})
      set_source_files_properties(${src_file} PROPERTIES
	     COMPILE_FLAGS "/Yc\"stdafx.h\" /Fp\"${PROJECT_BINARY_DIR}\\${PROJECT_NAME}.pch\""
		 OBJECT_OUTPUTS "${PROJECT_BINARY_DIR}\\${PROJECT_NAME}.pch")
   else()
      message(STATUS "src_fileNE*******************" ${src_file})
      set_source_files_properties(${src_file} PROPERTIES
	     COMPILE_FLAGS "/Yu\"stdafx.h\" /Fp\"${PROJECT_BINARY_DIR}\\${PROJECT_NAME}.pch\""
		 OBJECT_DEPENDS "${PROJECT_BINARY_DIR}\\${PROJECT_NAME}.pch")

   endif()
endforeach()

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


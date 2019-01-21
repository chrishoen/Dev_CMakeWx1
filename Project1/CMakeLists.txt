cmake_minimum_required (VERSION 3.8)

project (Project1 CXX)

my_find_src_files (src_files Project1)
add_executable (Project1 ${src_files})
my_add_compile_options (Project1)
my_add_pch (Project1)
target_link_libraries(Project1 ws2_32)


#scratch debug
return()
message(STATUS "Project1**************************************** ${PROJECT_NAME}")
message(STATUS "src_files************************" ${src_files})
message(STATUS "CMAKE_CXX_FLAGS********************************* ${CMAKE_CXX_FLAGS}")

foreach(src_file ${src_files})
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


# debug messages
return()
get_target_property(PROP_SOURCE Project1 SOURCES)
message(STATUS "Project    SourceDir*********************" ${PROJECT_SOURCE_DIR})
message(STATUS "Project1   Source************************" ${src_files})
message(STATUS "Project1   Source************************" ${PROP_SOURCE})
message(STATUS "PROJECT_BINARY_DIR***********************" ${PROJECT_BINARY_DIR})

#12
set(varx "ABC")
message(STATUS "varx1**************************************** ${varx}")
#MACRO1(${varx})
MACRO1(varx)
message(STATUS "varx2**************************************** ${varx}")
#function1(${varx})
function1(varx)
message(STATUS "varx3**************************************** ${varx}")

function1(varx)
message(STATUS "varx ************** ${varx}")
return()

message(STATUS "src_files************************BEGIN" ${src_files})
foreach(_src_file ${src_files})
   message(STATUS "src_file*****" ${_src_file})
endforeach()
message(STATUS "src_files************************END")

#file(GLOB src_files RELATIVE ${PROJECT_SOURCE_DIR} *.cpp)
#file(GLOB src_files *.cpp)

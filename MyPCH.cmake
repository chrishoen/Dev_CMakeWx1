function(my_add_pch _target)

   message(STATUS "my_add_pch************************ ${_target}")

   get_target_property(_src_files      ${_target} SOURCES)
   get_target_property(_tgt_binary_dir ${_target} BINARY_DIR)
   get_target_property(_tgt_name       ${_target} NAME)

   message(STATUS "my_add_pch PROJECT_SOURCE_DIR***********" ${PROJECT_SOURCE_DIR})
   message(STATUS "my_add_pch PROJECT_BINARY_DIR***********" ${PROJECT_BINARY_DIR})
   message(STATUS "my_add_pch _src_files*******************" ${_src_files})
   message(STATUS "my_add_pch _tgt_binary_dir**************" ${_tgt_binary_dir})
   message(STATUS "my_add_pch _tgt_name********************" ${_tgt_name})

   foreach(_src_file ${_src_files})
      if(${_src_file} MATCHES "stdafx.cpp") 
         message(STATUS "_src_fileEQ*******************" ${_src_file})
         set_source_files_properties(${_src_file} PROPERTIES
         COMPILE_FLAGS "/Yc\"stdafx.h\" /Fp\"${_tgt_binary_dir}\\${_tgt_name}.pch\""
         OBJECT_OUTPUTS "${_tgt_binary_dir}\\${_tgt_name}.pch")
      else()
         message(STATUS "_src_fileNE*******************" ${_src_file})
         set_source_files_properties(${_src_file} PROPERTIES
         COMPILE_FLAGS "/Yu\"stdafx.h\" /Fp\"${_tgt_binary_dir}\\${_tgt_name}.pch\""
         OBJECT_DEPENDS "${_tgt_binary_dir}\\${_tgt_name}.pch")
      endif()
   endforeach()
endfunction()




function(my_add_pch22 _target)

   message(STATUS "my_add_pch************************ ${_target}")

   get_target_property(_src_files      ${_target} SOURCES)
   get_target_property(_tgt_binary_dir ${_target} BINARY_DIR)
   get_target_property(_tgt_name       ${_target} NAME)

   message(STATUS "my_add_pch PROJECT_SOURCE_DIR***********" ${PROJECT_SOURCE_DIR})
   message(STATUS "my_add_pch PROJECT_BINARY_DIR***********" ${PROJECT_BINARY_DIR})
   message(STATUS "my_add_pch _src_files*******************" ${_src_files})
   message(STATUS "my_add_pch _tgt_binary_dir**************" ${_tgt_binary_dir})
   message(STATUS "my_add_pch _tgt_name********************" ${_tgt_name})

   foreach(_src_file ${_src_files})
      if(${_src_file} MATCHES "stdafx.cpp") 
         message(STATUS "_src_fileEQ*******************" ${_src_file})
         set_source_files_properties(${_src_file} PROPERTIES
         COMPILE_FLAGS "/Yc\"stdafx.h\" /Fp\"${PROJECT_BINARY_DIR}\\${PROJECT_NAME}.pch\""
         OBJECT_OUTPUTS "${PROJECT_BINARY_DIR}\\${PROJECT_NAME}.pch")
      else()
         message(STATUS "_src_fileNE*******************" ${_src_file})
         set_source_files_properties(${_src_file} PROPERTIES
         COMPILE_FLAGS "/Yu\"stdafx.h\" /Fp\"${PROJECT_BINARY_DIR}\\${PROJECT_NAME}.pch\""
         OBJECT_DEPENDS "${PROJECT_BINARY_DIR}\\${PROJECT_NAME}.pch")
      endif()
   endforeach()
endfunction()





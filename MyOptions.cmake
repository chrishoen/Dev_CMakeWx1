function(my_set_compile_options _target)
  target_compile_options(${_target} PRIVATE "/wd4996")
  target_compile_options(${_target} PRIVATE "/D_MBCS")
endfunction()

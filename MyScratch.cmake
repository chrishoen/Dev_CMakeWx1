#include(CMakeParseArguments)

macro(MACRO1 _arg)
  message("_arg1 ${${_arg}}")
  set(${_arg} "abc")
  message("_arg2 ${${_arg}}")
endmacro()

function(function1 _arg)
  message("_arg1 ${${_arg}}")
  set(${_arg} "abc" PARENT_SCOPE)
  message("_arg2 ${${_arg}}")
endfunction()

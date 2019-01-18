
add_library(MyLibrary1 STATIC IMPORTED)
set_target_properties(MyLibrary1 PROPERTIES IMPORTED_LOCATION "/var/tmp/install/lib/libMyLibrary1.a")
target_include_directories(MyLibrary1 INTERFACE "/var/tmp/install/include/MyLibrary1")

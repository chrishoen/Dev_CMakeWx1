cmake_minimum_required (VERSION 3.8)

project (MyProject1 CXX)

my_find_src_files (src_files MyProject1)
add_executable (MyProject1 ${src_files})
my_add_compile_options (MyProject1)
my_add_pch (MyProject1)

#target_include_directories(MyProject1 PRIVATE MyLibrary1)
target_link_libraries(MyProject1 MyLibrary1)

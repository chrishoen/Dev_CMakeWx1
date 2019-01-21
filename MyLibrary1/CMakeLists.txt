cmake_minimum_required (VERSION 3.8)

project (MyLibrary1 CXX)

my_find_src_files (src_files MyLibrary1)
add_library (MyLibrary1 STATIC ${src_files})
my_add_compile_options (MyLibrary1)
my_add_pch (MyLibrary1)

target_include_directories(MyLibrary1 PUBLIC ${PROJECT_SOURCE_DIR})
target_link_libraries(MyLibrary1 ws2_32)



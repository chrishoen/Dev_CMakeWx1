cmake_minimum_required (VERSION 3.8)

add_executable (Project1 "Project1.cpp" "stdafx.cpp")

target_link_libraries(Project1 ws2_32)

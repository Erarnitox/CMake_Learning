cmake_minimum_required(VERSION 3.15)

add_library(library library.c)
target_include_directories(library INTERFACE ${CMAKE_CURRENT_SOURCE_DIR})

target_link_libraries(library compiler_flags)

set(installable_libs library compiler_flags)
install(TARGETS ${installable_libs} DESTINATION lib)

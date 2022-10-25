cmake_minimum_required(VERSION 3.10)
project(hello VERSION 2.0)
add_executable(hello main.c)

configure_file(hello.h.in hello.h)
target_include_directories(hello PUBLIC "${PROJECT_BINARY_DIR}")

set(CMAKE_C_STANDARD 90) # ANSI-C all the way!
set(CMAKE_C_STANDARD_REQUIRED True)


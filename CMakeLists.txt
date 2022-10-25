cmake_minimum_required(VERSION 3.10)
project(hello)
add_executable(hello main.c)

set(CMAKE_C_STANDARD 90) # ANSI-C all the way!
set(CMAKE_C_STANDARD_REQUIRED True)


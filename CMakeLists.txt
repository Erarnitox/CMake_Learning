cmake_minimum_required(VERSION 3.10)
project(hello VERSION 2.0)
add_executable(hello main.c)

configure_file(hello.h.in hello.h)
target_include_directories(hello PUBLIC 
	"${PROJECT_BINARY_DIR}"
	"${PROJECT_SOURCE_DIR}/library"
)

add_subdirectory(library)

target_link_libraries(hello PUBLIC library)


set(CMAKE_C_STANDARD 90) # ANSI-C all the way!
set(CMAKE_C_STANDARD_REQUIRED True)


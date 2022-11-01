cmake_minimum_required(VERSION 3.15)
project(hello VERSION 2.0)
add_executable(hello main.c)

set(gcc_like_cxx "$<COMPILE_LANG_AND_ID:CXX,ARMClang,AppleClang,GNU,LCC>")
set(msvc_cxx "$<COMPILE_LANG_AND_ID:CXX,MSVC>")

add_library(compiler_flags INTERFACE)
target_compile_features(compiler_flags INTERFACE c_std_90)

target_compile_options(compiler_flags INTERFACE
	"$<${gcc_like_cxx}:$<BUILD_INTERFACE:-Wall;-Wextra;-Wshadow;-Wformat=2;-Wunused>>"
	"$<${msvc_cxx}:$<BUILD_INTERFACE:-W3>>"
)

option(USE_LIBRARY "Use our first test library" ON)

if(USE_LIBRARY)
	add_subdirectory(library)
	list(APPEND EXTRA_LIBS library)
endif()

configure_file(hello.h.in hello.h)
target_include_directories(hello PUBLIC 
	"${PROJECT_BINARY_DIR}"
	"${PROJECT_SOURCE_DIR}/library"
)

target_link_libraries(hello PUBLIC ${EXTRA_LIBS} compiler_flags) 
target_include_directories(hello PUBLIC "${PROJECT_BINARY_DIR}")

# set(CMAKE_C_STANDARD 90) # ANSI-C all the way!
# set(CMAKE_C_STANDARD_REQUIRED True)


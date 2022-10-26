cmake_minimum_required(VERSION 3.10)
project(hello VERSION 2.0)
add_executable(hello main.c)

option(USE_LIBRARY "Use our first test library" ON)

if(USE_LIBRARY)
	add_subdirectory(library)
	list(APPEND EXTRA_LIBS library)
	list(APPEND EXTRA_INCLUDES "${PROJECT_SOURCE_DIR}/library")
endif()

configure_file(hello.h.in hello.h)
target_include_directories(hello PUBLIC 
	"${PROJECT_BINARY_DIR}"
	"${PROJECT_SOURCE_DIR}/library"
)

target_link_libraries(hello PUBLIC ${EXTRA_LIBS})
target_include_directories(hello PUBLIC "${PROJECT_BINARY_DIR}"
										"${EXTRA_INCLUDES}"
						  )

set(CMAKE_C_STANDARD 90) # ANSI-C all the way!
set(CMAKE_C_STANDARD_REQUIRED True)


# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/me/Projects/C/CMake_tutorial

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/me/Projects/C/CMake_tutorial/build

# Include any dependencies generated for this target.
include library/CMakeFiles/library.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include library/CMakeFiles/library.dir/compiler_depend.make

# Include the progress variables for this target.
include library/CMakeFiles/library.dir/progress.make

# Include the compile flags for this target's objects.
include library/CMakeFiles/library.dir/flags.make

library/CMakeFiles/library.dir/library.c.o: library/CMakeFiles/library.dir/flags.make
library/CMakeFiles/library.dir/library.c.o: /home/me/Projects/C/CMake_tutorial/library/library.c
library/CMakeFiles/library.dir/library.c.o: library/CMakeFiles/library.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/me/Projects/C/CMake_tutorial/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object library/CMakeFiles/library.dir/library.c.o"
	cd /home/me/Projects/C/CMake_tutorial/build/library && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT library/CMakeFiles/library.dir/library.c.o -MF CMakeFiles/library.dir/library.c.o.d -o CMakeFiles/library.dir/library.c.o -c /home/me/Projects/C/CMake_tutorial/library/library.c

library/CMakeFiles/library.dir/library.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/library.dir/library.c.i"
	cd /home/me/Projects/C/CMake_tutorial/build/library && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/me/Projects/C/CMake_tutorial/library/library.c > CMakeFiles/library.dir/library.c.i

library/CMakeFiles/library.dir/library.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/library.dir/library.c.s"
	cd /home/me/Projects/C/CMake_tutorial/build/library && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/me/Projects/C/CMake_tutorial/library/library.c -o CMakeFiles/library.dir/library.c.s

# Object files for target library
library_OBJECTS = \
"CMakeFiles/library.dir/library.c.o"

# External object files for target library
library_EXTERNAL_OBJECTS =

library/liblibrary.a: library/CMakeFiles/library.dir/library.c.o
library/liblibrary.a: library/CMakeFiles/library.dir/build.make
library/liblibrary.a: library/CMakeFiles/library.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/me/Projects/C/CMake_tutorial/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library liblibrary.a"
	cd /home/me/Projects/C/CMake_tutorial/build/library && $(CMAKE_COMMAND) -P CMakeFiles/library.dir/cmake_clean_target.cmake
	cd /home/me/Projects/C/CMake_tutorial/build/library && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/library.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
library/CMakeFiles/library.dir/build: library/liblibrary.a
.PHONY : library/CMakeFiles/library.dir/build

library/CMakeFiles/library.dir/clean:
	cd /home/me/Projects/C/CMake_tutorial/build/library && $(CMAKE_COMMAND) -P CMakeFiles/library.dir/cmake_clean.cmake
.PHONY : library/CMakeFiles/library.dir/clean

library/CMakeFiles/library.dir/depend:
	cd /home/me/Projects/C/CMake_tutorial/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/me/Projects/C/CMake_tutorial /home/me/Projects/C/CMake_tutorial/library /home/me/Projects/C/CMake_tutorial/build /home/me/Projects/C/CMake_tutorial/build/library /home/me/Projects/C/CMake_tutorial/build/library/CMakeFiles/library.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : library/CMakeFiles/library.dir/depend


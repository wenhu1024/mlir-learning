# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_SOURCE_DIR = /home/wenhu/mlir-learning

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/wenhu/mlir-learning/build

# Include any dependencies generated for this target.
include lib/Transform/Affine/CMakeFiles/AffineFullUnroll.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include lib/Transform/Affine/CMakeFiles/AffineFullUnroll.dir/compiler_depend.make

# Include the progress variables for this target.
include lib/Transform/Affine/CMakeFiles/AffineFullUnroll.dir/progress.make

# Include the compile flags for this target's objects.
include lib/Transform/Affine/CMakeFiles/AffineFullUnroll.dir/flags.make

lib/Transform/Affine/CMakeFiles/AffineFullUnroll.dir/AffineFullUnroll.cpp.o: lib/Transform/Affine/CMakeFiles/AffineFullUnroll.dir/flags.make
lib/Transform/Affine/CMakeFiles/AffineFullUnroll.dir/AffineFullUnroll.cpp.o: ../lib/Transform/Affine/AffineFullUnroll.cpp
lib/Transform/Affine/CMakeFiles/AffineFullUnroll.dir/AffineFullUnroll.cpp.o: lib/Transform/Affine/CMakeFiles/AffineFullUnroll.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wenhu/mlir-learning/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lib/Transform/Affine/CMakeFiles/AffineFullUnroll.dir/AffineFullUnroll.cpp.o"
	cd /home/wenhu/mlir-learning/build/lib/Transform/Affine && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT lib/Transform/Affine/CMakeFiles/AffineFullUnroll.dir/AffineFullUnroll.cpp.o -MF CMakeFiles/AffineFullUnroll.dir/AffineFullUnroll.cpp.o.d -o CMakeFiles/AffineFullUnroll.dir/AffineFullUnroll.cpp.o -c /home/wenhu/mlir-learning/lib/Transform/Affine/AffineFullUnroll.cpp

lib/Transform/Affine/CMakeFiles/AffineFullUnroll.dir/AffineFullUnroll.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AffineFullUnroll.dir/AffineFullUnroll.cpp.i"
	cd /home/wenhu/mlir-learning/build/lib/Transform/Affine && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wenhu/mlir-learning/lib/Transform/Affine/AffineFullUnroll.cpp > CMakeFiles/AffineFullUnroll.dir/AffineFullUnroll.cpp.i

lib/Transform/Affine/CMakeFiles/AffineFullUnroll.dir/AffineFullUnroll.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AffineFullUnroll.dir/AffineFullUnroll.cpp.s"
	cd /home/wenhu/mlir-learning/build/lib/Transform/Affine && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wenhu/mlir-learning/lib/Transform/Affine/AffineFullUnroll.cpp -o CMakeFiles/AffineFullUnroll.dir/AffineFullUnroll.cpp.s

# Object files for target AffineFullUnroll
AffineFullUnroll_OBJECTS = \
"CMakeFiles/AffineFullUnroll.dir/AffineFullUnroll.cpp.o"

# External object files for target AffineFullUnroll
AffineFullUnroll_EXTERNAL_OBJECTS =

lib/Transform/Affine/libAffineFullUnroll.a: lib/Transform/Affine/CMakeFiles/AffineFullUnroll.dir/AffineFullUnroll.cpp.o
lib/Transform/Affine/libAffineFullUnroll.a: lib/Transform/Affine/CMakeFiles/AffineFullUnroll.dir/build.make
lib/Transform/Affine/libAffineFullUnroll.a: lib/Transform/Affine/CMakeFiles/AffineFullUnroll.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wenhu/mlir-learning/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libAffineFullUnroll.a"
	cd /home/wenhu/mlir-learning/build/lib/Transform/Affine && $(CMAKE_COMMAND) -P CMakeFiles/AffineFullUnroll.dir/cmake_clean_target.cmake
	cd /home/wenhu/mlir-learning/build/lib/Transform/Affine && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/AffineFullUnroll.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/Transform/Affine/CMakeFiles/AffineFullUnroll.dir/build: lib/Transform/Affine/libAffineFullUnroll.a
.PHONY : lib/Transform/Affine/CMakeFiles/AffineFullUnroll.dir/build

lib/Transform/Affine/CMakeFiles/AffineFullUnroll.dir/clean:
	cd /home/wenhu/mlir-learning/build/lib/Transform/Affine && $(CMAKE_COMMAND) -P CMakeFiles/AffineFullUnroll.dir/cmake_clean.cmake
.PHONY : lib/Transform/Affine/CMakeFiles/AffineFullUnroll.dir/clean

lib/Transform/Affine/CMakeFiles/AffineFullUnroll.dir/depend:
	cd /home/wenhu/mlir-learning/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wenhu/mlir-learning /home/wenhu/mlir-learning/lib/Transform/Affine /home/wenhu/mlir-learning/build /home/wenhu/mlir-learning/build/lib/Transform/Affine /home/wenhu/mlir-learning/build/lib/Transform/Affine/CMakeFiles/AffineFullUnroll.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/Transform/Affine/CMakeFiles/AffineFullUnroll.dir/depend

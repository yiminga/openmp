# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
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
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/haomeng/projects/MyOpenMP/openmp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/haomeng/projects/MyOpenMP/openmp/build

# Utility rule file for libomp-test-deps.

# Include the progress variables for this target.
include runtime/src/CMakeFiles/libomp-test-deps.dir/progress.make

runtime/src/CMakeFiles/libomp-test-deps: runtime/src/test-deps/.success


runtime/src/test-deps/.success: runtime/src/libomp.so
runtime/src/test-deps/.success: ../runtime/tools/check-depends.pl
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/haomeng/projects/MyOpenMP/openmp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating test-deps/.success"
	cd /home/haomeng/projects/MyOpenMP/openmp/build/runtime/src && /usr/bin/cmake -E make_directory /home/haomeng/projects/MyOpenMP/openmp/build/runtime/src/test-deps
	cd /home/haomeng/projects/MyOpenMP/openmp/build/runtime/src && /usr/bin/perl /home/haomeng/projects/MyOpenMP/openmp/runtime/tools/check-depends.pl --os=lin --arch=32e --expected="libdl.so.2,libgcc_s.so.1,libc.so.6,ld-linux-x86-64.so.2,libpthread.so.0" /home/haomeng/projects/MyOpenMP/openmp/build/runtime/src/libomp.so
	cd /home/haomeng/projects/MyOpenMP/openmp/build/runtime/src && /usr/bin/cmake -E touch test-deps/.success

libomp-test-deps: runtime/src/CMakeFiles/libomp-test-deps
libomp-test-deps: runtime/src/test-deps/.success
libomp-test-deps: runtime/src/CMakeFiles/libomp-test-deps.dir/build.make

.PHONY : libomp-test-deps

# Rule to build all files generated by this target.
runtime/src/CMakeFiles/libomp-test-deps.dir/build: libomp-test-deps

.PHONY : runtime/src/CMakeFiles/libomp-test-deps.dir/build

runtime/src/CMakeFiles/libomp-test-deps.dir/clean:
	cd /home/haomeng/projects/MyOpenMP/openmp/build/runtime/src && $(CMAKE_COMMAND) -P CMakeFiles/libomp-test-deps.dir/cmake_clean.cmake
.PHONY : runtime/src/CMakeFiles/libomp-test-deps.dir/clean

runtime/src/CMakeFiles/libomp-test-deps.dir/depend:
	cd /home/haomeng/projects/MyOpenMP/openmp/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/haomeng/projects/MyOpenMP/openmp /home/haomeng/projects/MyOpenMP/openmp/runtime/src /home/haomeng/projects/MyOpenMP/openmp/build /home/haomeng/projects/MyOpenMP/openmp/build/runtime/src /home/haomeng/projects/MyOpenMP/openmp/build/runtime/src/CMakeFiles/libomp-test-deps.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : runtime/src/CMakeFiles/libomp-test-deps.dir/depend

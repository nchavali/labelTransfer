# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_COMMAND = /usr/bin/cmake28

# The command to remove a file.
RM = /usr/bin/cmake28 -E remove -f

# Escaping for special characters.
EQUALS = =

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake28

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/gneelima/work/code/objectProposals/labelTransfer/flann/flann-1.8.4-src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/gneelima/work/code/objectProposals/labelTransfer/flann/flann-1.8.4-src/build

# Utility rule file for flann_gtests.

# Include the progress variables for this target.
include test/CMakeFiles/flann_gtests.dir/progress.make

test/CMakeFiles/flann_gtests:

flann_gtests: test/CMakeFiles/flann_gtests
flann_gtests: test/CMakeFiles/flann_gtests.dir/build.make
.PHONY : flann_gtests

# Rule to build all files generated by this target.
test/CMakeFiles/flann_gtests.dir/build: flann_gtests
.PHONY : test/CMakeFiles/flann_gtests.dir/build

test/CMakeFiles/flann_gtests.dir/clean:
	cd /home/gneelima/work/code/objectProposals/labelTransfer/flann/flann-1.8.4-src/build/test && $(CMAKE_COMMAND) -P CMakeFiles/flann_gtests.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/flann_gtests.dir/clean

test/CMakeFiles/flann_gtests.dir/depend:
	cd /home/gneelima/work/code/objectProposals/labelTransfer/flann/flann-1.8.4-src/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/gneelima/work/code/objectProposals/labelTransfer/flann/flann-1.8.4-src /home/gneelima/work/code/objectProposals/labelTransfer/flann/flann-1.8.4-src/test /home/gneelima/work/code/objectProposals/labelTransfer/flann/flann-1.8.4-src/build /home/gneelima/work/code/objectProposals/labelTransfer/flann/flann-1.8.4-src/build/test /home/gneelima/work/code/objectProposals/labelTransfer/flann/flann-1.8.4-src/build/test/CMakeFiles/flann_gtests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/flann_gtests.dir/depend


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

# Utility rule file for mex_nearest_neighbors.

# Include the progress variables for this target.
include src/matlab/CMakeFiles/mex_nearest_neighbors.dir/progress.make

src/matlab/CMakeFiles/mex_nearest_neighbors: src/matlab/nearest_neighbors.mexa64

src/matlab/nearest_neighbors.mexa64: lib/libflann_s.a
src/matlab/nearest_neighbors.mexa64: ../src/matlab/nearest_neighbors.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/gneelima/work/code/objectProposals/labelTransfer/flann/flann-1.8.4-src/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Building MEX extension /home/gneelima/work/code/objectProposals/labelTransfer/flann/flann-1.8.4-src/build/src/matlab/nearest_neighbors.mexa64"
	cd /home/gneelima/work/code/objectProposals/labelTransfer/flann/flann-1.8.4-src/build/src/matlab && /usr/local/MATLAB/R2014a/bin/mex /home/gneelima/work/code/objectProposals/labelTransfer/flann/flann-1.8.4-src/src/matlab/nearest_neighbors.cpp -I/home/gneelima/work/code/objectProposals/labelTransfer/flann/flann-1.8.4-src/src/cpp -L/home/gneelima/work/code/objectProposals/labelTransfer/flann/flann-1.8.4-src/build/lib -lflann_s CFLAGS='$$CFLAGS -fopenmp' LDFLAGS='$$LDFLAGS -fopenmp '

mex_nearest_neighbors: src/matlab/CMakeFiles/mex_nearest_neighbors
mex_nearest_neighbors: src/matlab/nearest_neighbors.mexa64
mex_nearest_neighbors: src/matlab/CMakeFiles/mex_nearest_neighbors.dir/build.make
.PHONY : mex_nearest_neighbors

# Rule to build all files generated by this target.
src/matlab/CMakeFiles/mex_nearest_neighbors.dir/build: mex_nearest_neighbors
.PHONY : src/matlab/CMakeFiles/mex_nearest_neighbors.dir/build

src/matlab/CMakeFiles/mex_nearest_neighbors.dir/clean:
	cd /home/gneelima/work/code/objectProposals/labelTransfer/flann/flann-1.8.4-src/build/src/matlab && $(CMAKE_COMMAND) -P CMakeFiles/mex_nearest_neighbors.dir/cmake_clean.cmake
.PHONY : src/matlab/CMakeFiles/mex_nearest_neighbors.dir/clean

src/matlab/CMakeFiles/mex_nearest_neighbors.dir/depend:
	cd /home/gneelima/work/code/objectProposals/labelTransfer/flann/flann-1.8.4-src/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/gneelima/work/code/objectProposals/labelTransfer/flann/flann-1.8.4-src /home/gneelima/work/code/objectProposals/labelTransfer/flann/flann-1.8.4-src/src/matlab /home/gneelima/work/code/objectProposals/labelTransfer/flann/flann-1.8.4-src/build /home/gneelima/work/code/objectProposals/labelTransfer/flann/flann-1.8.4-src/build/src/matlab /home/gneelima/work/code/objectProposals/labelTransfer/flann/flann-1.8.4-src/build/src/matlab/CMakeFiles/mex_nearest_neighbors.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/matlab/CMakeFiles/mex_nearest_neighbors.dir/depend

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

# Utility rule file for ps.

# Include the progress variables for this target.
include doc/CMakeFiles/ps.dir/progress.make

doc/CMakeFiles/ps: doc/manual.ps

doc/manual.ps: doc/manual.dvi
	$(CMAKE_COMMAND) -E cmake_progress_report /home/gneelima/work/code/objectProposals/labelTransfer/flann/flann-1.8.4-src/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating manual.ps"
	cd /home/gneelima/work/code/objectProposals/labelTransfer/flann/flann-1.8.4-src/build/doc && /usr/bin/cmake28 -E chdir /home/gneelima/work/code/objectProposals/labelTransfer/flann/flann-1.8.4-src/build/doc /usr/bin/dvips -Ppdf -G0 -t letter -o manual.ps manual.dvi

doc/manual.dvi: doc/images/cmake-gui.eps
doc/manual.dvi: doc/manual.tex
doc/manual.dvi: doc/references.bib
	$(CMAKE_COMMAND) -E cmake_progress_report /home/gneelima/work/code/objectProposals/labelTransfer/flann/flann-1.8.4-src/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating manual.dvi"
	cd /home/gneelima/work/code/objectProposals/labelTransfer/flann/flann-1.8.4-src/build/doc && /usr/bin/cmake28 -E chdir /home/gneelima/work/code/objectProposals/labelTransfer/flann/flann-1.8.4-src/build/doc /usr/bin/latex -interaction=batchmode manual.tex
	cd /home/gneelima/work/code/objectProposals/labelTransfer/flann/flann-1.8.4-src/build/doc && /usr/bin/cmake28 -E chdir /home/gneelima/work/code/objectProposals/labelTransfer/flann/flann-1.8.4-src/build/doc /usr/bin/bibtex manual
	cd /home/gneelima/work/code/objectProposals/labelTransfer/flann/flann-1.8.4-src/build/doc && /usr/bin/cmake28 -E chdir /home/gneelima/work/code/objectProposals/labelTransfer/flann/flann-1.8.4-src/build/doc /usr/bin/latex -interaction=batchmode manual.tex
	cd /home/gneelima/work/code/objectProposals/labelTransfer/flann/flann-1.8.4-src/build/doc && /usr/bin/cmake28 -E chdir /home/gneelima/work/code/objectProposals/labelTransfer/flann/flann-1.8.4-src/build/doc /usr/bin/latex -interaction=batchmode manual.tex

doc/images/cmake-gui.eps: ../doc/images/cmake-gui.png
	$(CMAKE_COMMAND) -E cmake_progress_report /home/gneelima/work/code/objectProposals/labelTransfer/flann/flann-1.8.4-src/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating images/cmake-gui.eps"
	cd /home/gneelima/work/code/objectProposals/labelTransfer/flann/flann-1.8.4-src/build/doc && /usr/bin/convert /home/gneelima/work/code/objectProposals/labelTransfer/flann/flann-1.8.4-src/doc/images/cmake-gui.png /home/gneelima/work/code/objectProposals/labelTransfer/flann/flann-1.8.4-src/build/doc/images/cmake-gui.eps

doc/manual.tex: ../doc/manual.tex
	$(CMAKE_COMMAND) -E cmake_progress_report /home/gneelima/work/code/objectProposals/labelTransfer/flann/flann-1.8.4-src/build/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating manual.tex"
	cd /home/gneelima/work/code/objectProposals/labelTransfer/flann/flann-1.8.4-src/build/doc && /usr/bin/cmake28 -E copy /home/gneelima/work/code/objectProposals/labelTransfer/flann/flann-1.8.4-src/doc/manual.tex /home/gneelima/work/code/objectProposals/labelTransfer/flann/flann-1.8.4-src/build/doc/manual.tex

doc/references.bib: ../doc/references.bib
	$(CMAKE_COMMAND) -E cmake_progress_report /home/gneelima/work/code/objectProposals/labelTransfer/flann/flann-1.8.4-src/build/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating references.bib"
	cd /home/gneelima/work/code/objectProposals/labelTransfer/flann/flann-1.8.4-src/build/doc && /usr/bin/cmake28 -E copy /home/gneelima/work/code/objectProposals/labelTransfer/flann/flann-1.8.4-src/doc/references.bib /home/gneelima/work/code/objectProposals/labelTransfer/flann/flann-1.8.4-src/build/doc/references.bib

ps: doc/CMakeFiles/ps
ps: doc/manual.ps
ps: doc/manual.dvi
ps: doc/images/cmake-gui.eps
ps: doc/manual.tex
ps: doc/references.bib
ps: doc/CMakeFiles/ps.dir/build.make
.PHONY : ps

# Rule to build all files generated by this target.
doc/CMakeFiles/ps.dir/build: ps
.PHONY : doc/CMakeFiles/ps.dir/build

doc/CMakeFiles/ps.dir/clean:
	cd /home/gneelima/work/code/objectProposals/labelTransfer/flann/flann-1.8.4-src/build/doc && $(CMAKE_COMMAND) -P CMakeFiles/ps.dir/cmake_clean.cmake
.PHONY : doc/CMakeFiles/ps.dir/clean

doc/CMakeFiles/ps.dir/depend:
	cd /home/gneelima/work/code/objectProposals/labelTransfer/flann/flann-1.8.4-src/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/gneelima/work/code/objectProposals/labelTransfer/flann/flann-1.8.4-src /home/gneelima/work/code/objectProposals/labelTransfer/flann/flann-1.8.4-src/doc /home/gneelima/work/code/objectProposals/labelTransfer/flann/flann-1.8.4-src/build /home/gneelima/work/code/objectProposals/labelTransfer/flann/flann-1.8.4-src/build/doc /home/gneelima/work/code/objectProposals/labelTransfer/flann/flann-1.8.4-src/build/doc/CMakeFiles/ps.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : doc/CMakeFiles/ps.dir/depend

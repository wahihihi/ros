# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.21

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
CMAKE_COMMAND = /home/nuc/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/213.6777.58/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/nuc/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/213.6777.58/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/nuc/ros/catkin_ws/src/fusion-based-perception-main

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nuc/ros/catkin_ws/src/fusion-based-perception-main/cmake-build-debug

# Utility rule file for download_extra_data.

# Include any custom commands dependencies for this target.
include CMakeFiles/download_extra_data.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/download_extra_data.dir/progress.make

download_extra_data: CMakeFiles/download_extra_data.dir/build.make
.PHONY : download_extra_data

# Rule to build all files generated by this target.
CMakeFiles/download_extra_data.dir/build: download_extra_data
.PHONY : CMakeFiles/download_extra_data.dir/build

CMakeFiles/download_extra_data.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/download_extra_data.dir/cmake_clean.cmake
.PHONY : CMakeFiles/download_extra_data.dir/clean

CMakeFiles/download_extra_data.dir/depend:
	cd /home/nuc/ros/catkin_ws/src/fusion-based-perception-main/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nuc/ros/catkin_ws/src/fusion-based-perception-main /home/nuc/ros/catkin_ws/src/fusion-based-perception-main /home/nuc/ros/catkin_ws/src/fusion-based-perception-main/cmake-build-debug /home/nuc/ros/catkin_ws/src/fusion-based-perception-main/cmake-build-debug /home/nuc/ros/catkin_ws/src/fusion-based-perception-main/cmake-build-debug/CMakeFiles/download_extra_data.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/download_extra_data.dir/depend


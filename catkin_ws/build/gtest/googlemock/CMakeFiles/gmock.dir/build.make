# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
<<<<<<< HEAD
CMAKE_SOURCE_DIR = /home/swh/learning/ros/catkin_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/swh/learning/ros/catkin_ws/build
=======
CMAKE_SOURCE_DIR = /home/nuc/ros/catkin_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nuc/ros/catkin_ws/build
>>>>>>> 001c0b86613294c152ae9209fbb9e7f0f1ae8147

# Include any dependencies generated for this target.
include gtest/googlemock/CMakeFiles/gmock.dir/depend.make

# Include the progress variables for this target.
include gtest/googlemock/CMakeFiles/gmock.dir/progress.make

# Include the compile flags for this target's objects.
include gtest/googlemock/CMakeFiles/gmock.dir/flags.make

gtest/googlemock/CMakeFiles/gmock.dir/src/gmock-all.cc.o: gtest/googlemock/CMakeFiles/gmock.dir/flags.make
gtest/googlemock/CMakeFiles/gmock.dir/src/gmock-all.cc.o: /usr/src/googletest/googlemock/src/gmock-all.cc
<<<<<<< HEAD
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/swh/learning/ros/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object gtest/googlemock/CMakeFiles/gmock.dir/src/gmock-all.cc.o"
	cd /home/swh/learning/ros/catkin_ws/build/gtest/googlemock && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/gmock.dir/src/gmock-all.cc.o -c /usr/src/googletest/googlemock/src/gmock-all.cc

gtest/googlemock/CMakeFiles/gmock.dir/src/gmock-all.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gmock.dir/src/gmock-all.cc.i"
	cd /home/swh/learning/ros/catkin_ws/build/gtest/googlemock && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /usr/src/googletest/googlemock/src/gmock-all.cc > CMakeFiles/gmock.dir/src/gmock-all.cc.i

gtest/googlemock/CMakeFiles/gmock.dir/src/gmock-all.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gmock.dir/src/gmock-all.cc.s"
	cd /home/swh/learning/ros/catkin_ws/build/gtest/googlemock && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /usr/src/googletest/googlemock/src/gmock-all.cc -o CMakeFiles/gmock.dir/src/gmock-all.cc.s
=======
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nuc/ros/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object gtest/googlemock/CMakeFiles/gmock.dir/src/gmock-all.cc.o"
	cd /home/nuc/ros/catkin_ws/build/gtest/googlemock && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/gmock.dir/src/gmock-all.cc.o -c /usr/src/googletest/googlemock/src/gmock-all.cc

gtest/googlemock/CMakeFiles/gmock.dir/src/gmock-all.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gmock.dir/src/gmock-all.cc.i"
	cd /home/nuc/ros/catkin_ws/build/gtest/googlemock && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /usr/src/googletest/googlemock/src/gmock-all.cc > CMakeFiles/gmock.dir/src/gmock-all.cc.i

gtest/googlemock/CMakeFiles/gmock.dir/src/gmock-all.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gmock.dir/src/gmock-all.cc.s"
	cd /home/nuc/ros/catkin_ws/build/gtest/googlemock && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /usr/src/googletest/googlemock/src/gmock-all.cc -o CMakeFiles/gmock.dir/src/gmock-all.cc.s
>>>>>>> 001c0b86613294c152ae9209fbb9e7f0f1ae8147

# Object files for target gmock
gmock_OBJECTS = \
"CMakeFiles/gmock.dir/src/gmock-all.cc.o"

# External object files for target gmock
gmock_EXTERNAL_OBJECTS =

gtest/lib/libgmock.so: gtest/googlemock/CMakeFiles/gmock.dir/src/gmock-all.cc.o
gtest/lib/libgmock.so: gtest/googlemock/CMakeFiles/gmock.dir/build.make
gtest/lib/libgmock.so: gtest/lib/libgtest.so
gtest/lib/libgmock.so: gtest/googlemock/CMakeFiles/gmock.dir/link.txt
<<<<<<< HEAD
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/swh/learning/ros/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library ../lib/libgmock.so"
	cd /home/swh/learning/ros/catkin_ws/build/gtest/googlemock && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gmock.dir/link.txt --verbose=$(VERBOSE)
=======
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nuc/ros/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library ../lib/libgmock.so"
	cd /home/nuc/ros/catkin_ws/build/gtest/googlemock && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gmock.dir/link.txt --verbose=$(VERBOSE)
>>>>>>> 001c0b86613294c152ae9209fbb9e7f0f1ae8147

# Rule to build all files generated by this target.
gtest/googlemock/CMakeFiles/gmock.dir/build: gtest/lib/libgmock.so

.PHONY : gtest/googlemock/CMakeFiles/gmock.dir/build

gtest/googlemock/CMakeFiles/gmock.dir/clean:
<<<<<<< HEAD
	cd /home/swh/learning/ros/catkin_ws/build/gtest/googlemock && $(CMAKE_COMMAND) -P CMakeFiles/gmock.dir/cmake_clean.cmake
.PHONY : gtest/googlemock/CMakeFiles/gmock.dir/clean

gtest/googlemock/CMakeFiles/gmock.dir/depend:
	cd /home/swh/learning/ros/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/swh/learning/ros/catkin_ws/src /usr/src/googletest/googlemock /home/swh/learning/ros/catkin_ws/build /home/swh/learning/ros/catkin_ws/build/gtest/googlemock /home/swh/learning/ros/catkin_ws/build/gtest/googlemock/CMakeFiles/gmock.dir/DependInfo.cmake --color=$(COLOR)
=======
	cd /home/nuc/ros/catkin_ws/build/gtest/googlemock && $(CMAKE_COMMAND) -P CMakeFiles/gmock.dir/cmake_clean.cmake
.PHONY : gtest/googlemock/CMakeFiles/gmock.dir/clean

gtest/googlemock/CMakeFiles/gmock.dir/depend:
	cd /home/nuc/ros/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nuc/ros/catkin_ws/src /usr/src/googletest/googlemock /home/nuc/ros/catkin_ws/build /home/nuc/ros/catkin_ws/build/gtest/googlemock /home/nuc/ros/catkin_ws/build/gtest/googlemock/CMakeFiles/gmock.dir/DependInfo.cmake --color=$(COLOR)
>>>>>>> 001c0b86613294c152ae9209fbb9e7f0f1ae8147
.PHONY : gtest/googlemock/CMakeFiles/gmock.dir/depend


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
CMAKE_SOURCE_DIR = /home/nuc/CLionProjects/My_Sensor_fusion_node

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nuc/CLionProjects/My_Sensor_fusion_node/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/kit_perception_fusion.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/kit_perception_fusion.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/kit_perception_fusion.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/kit_perception_fusion.dir/flags.make

CMakeFiles/kit_perception_fusion.dir/fusion/fusion_ekf.cpp.o: CMakeFiles/kit_perception_fusion.dir/flags.make
CMakeFiles/kit_perception_fusion.dir/fusion/fusion_ekf.cpp.o: ../fusion/fusion_ekf.cpp
CMakeFiles/kit_perception_fusion.dir/fusion/fusion_ekf.cpp.o: CMakeFiles/kit_perception_fusion.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nuc/CLionProjects/My_Sensor_fusion_node/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/kit_perception_fusion.dir/fusion/fusion_ekf.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/kit_perception_fusion.dir/fusion/fusion_ekf.cpp.o -MF CMakeFiles/kit_perception_fusion.dir/fusion/fusion_ekf.cpp.o.d -o CMakeFiles/kit_perception_fusion.dir/fusion/fusion_ekf.cpp.o -c /home/nuc/CLionProjects/My_Sensor_fusion_node/fusion/fusion_ekf.cpp

CMakeFiles/kit_perception_fusion.dir/fusion/fusion_ekf.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kit_perception_fusion.dir/fusion/fusion_ekf.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nuc/CLionProjects/My_Sensor_fusion_node/fusion/fusion_ekf.cpp > CMakeFiles/kit_perception_fusion.dir/fusion/fusion_ekf.cpp.i

CMakeFiles/kit_perception_fusion.dir/fusion/fusion_ekf.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kit_perception_fusion.dir/fusion/fusion_ekf.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nuc/CLionProjects/My_Sensor_fusion_node/fusion/fusion_ekf.cpp -o CMakeFiles/kit_perception_fusion.dir/fusion/fusion_ekf.cpp.s

CMakeFiles/kit_perception_fusion.dir/fusion/fusion_wrapper.cpp.o: CMakeFiles/kit_perception_fusion.dir/flags.make
CMakeFiles/kit_perception_fusion.dir/fusion/fusion_wrapper.cpp.o: ../fusion/fusion_wrapper.cpp
CMakeFiles/kit_perception_fusion.dir/fusion/fusion_wrapper.cpp.o: CMakeFiles/kit_perception_fusion.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nuc/CLionProjects/My_Sensor_fusion_node/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/kit_perception_fusion.dir/fusion/fusion_wrapper.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/kit_perception_fusion.dir/fusion/fusion_wrapper.cpp.o -MF CMakeFiles/kit_perception_fusion.dir/fusion/fusion_wrapper.cpp.o.d -o CMakeFiles/kit_perception_fusion.dir/fusion/fusion_wrapper.cpp.o -c /home/nuc/CLionProjects/My_Sensor_fusion_node/fusion/fusion_wrapper.cpp

CMakeFiles/kit_perception_fusion.dir/fusion/fusion_wrapper.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kit_perception_fusion.dir/fusion/fusion_wrapper.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nuc/CLionProjects/My_Sensor_fusion_node/fusion/fusion_wrapper.cpp > CMakeFiles/kit_perception_fusion.dir/fusion/fusion_wrapper.cpp.i

CMakeFiles/kit_perception_fusion.dir/fusion/fusion_wrapper.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kit_perception_fusion.dir/fusion/fusion_wrapper.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nuc/CLionProjects/My_Sensor_fusion_node/fusion/fusion_wrapper.cpp -o CMakeFiles/kit_perception_fusion.dir/fusion/fusion_wrapper.cpp.s

CMakeFiles/kit_perception_fusion.dir/fusion/iou.cpp.o: CMakeFiles/kit_perception_fusion.dir/flags.make
CMakeFiles/kit_perception_fusion.dir/fusion/iou.cpp.o: ../fusion/iou.cpp
CMakeFiles/kit_perception_fusion.dir/fusion/iou.cpp.o: CMakeFiles/kit_perception_fusion.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nuc/CLionProjects/My_Sensor_fusion_node/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/kit_perception_fusion.dir/fusion/iou.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/kit_perception_fusion.dir/fusion/iou.cpp.o -MF CMakeFiles/kit_perception_fusion.dir/fusion/iou.cpp.o.d -o CMakeFiles/kit_perception_fusion.dir/fusion/iou.cpp.o -c /home/nuc/CLionProjects/My_Sensor_fusion_node/fusion/iou.cpp

CMakeFiles/kit_perception_fusion.dir/fusion/iou.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kit_perception_fusion.dir/fusion/iou.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nuc/CLionProjects/My_Sensor_fusion_node/fusion/iou.cpp > CMakeFiles/kit_perception_fusion.dir/fusion/iou.cpp.i

CMakeFiles/kit_perception_fusion.dir/fusion/iou.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kit_perception_fusion.dir/fusion/iou.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nuc/CLionProjects/My_Sensor_fusion_node/fusion/iou.cpp -o CMakeFiles/kit_perception_fusion.dir/fusion/iou.cpp.s

CMakeFiles/kit_perception_fusion.dir/fusion/kalman_filter.cpp.o: CMakeFiles/kit_perception_fusion.dir/flags.make
CMakeFiles/kit_perception_fusion.dir/fusion/kalman_filter.cpp.o: ../fusion/kalman_filter.cpp
CMakeFiles/kit_perception_fusion.dir/fusion/kalman_filter.cpp.o: CMakeFiles/kit_perception_fusion.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nuc/CLionProjects/My_Sensor_fusion_node/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/kit_perception_fusion.dir/fusion/kalman_filter.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/kit_perception_fusion.dir/fusion/kalman_filter.cpp.o -MF CMakeFiles/kit_perception_fusion.dir/fusion/kalman_filter.cpp.o.d -o CMakeFiles/kit_perception_fusion.dir/fusion/kalman_filter.cpp.o -c /home/nuc/CLionProjects/My_Sensor_fusion_node/fusion/kalman_filter.cpp

CMakeFiles/kit_perception_fusion.dir/fusion/kalman_filter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kit_perception_fusion.dir/fusion/kalman_filter.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nuc/CLionProjects/My_Sensor_fusion_node/fusion/kalman_filter.cpp > CMakeFiles/kit_perception_fusion.dir/fusion/kalman_filter.cpp.i

CMakeFiles/kit_perception_fusion.dir/fusion/kalman_filter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kit_perception_fusion.dir/fusion/kalman_filter.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nuc/CLionProjects/My_Sensor_fusion_node/fusion/kalman_filter.cpp -o CMakeFiles/kit_perception_fusion.dir/fusion/kalman_filter.cpp.s

CMakeFiles/kit_perception_fusion.dir/fusion/matcher.cpp.o: CMakeFiles/kit_perception_fusion.dir/flags.make
CMakeFiles/kit_perception_fusion.dir/fusion/matcher.cpp.o: ../fusion/matcher.cpp
CMakeFiles/kit_perception_fusion.dir/fusion/matcher.cpp.o: CMakeFiles/kit_perception_fusion.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nuc/CLionProjects/My_Sensor_fusion_node/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/kit_perception_fusion.dir/fusion/matcher.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/kit_perception_fusion.dir/fusion/matcher.cpp.o -MF CMakeFiles/kit_perception_fusion.dir/fusion/matcher.cpp.o.d -o CMakeFiles/kit_perception_fusion.dir/fusion/matcher.cpp.o -c /home/nuc/CLionProjects/My_Sensor_fusion_node/fusion/matcher.cpp

CMakeFiles/kit_perception_fusion.dir/fusion/matcher.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kit_perception_fusion.dir/fusion/matcher.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nuc/CLionProjects/My_Sensor_fusion_node/fusion/matcher.cpp > CMakeFiles/kit_perception_fusion.dir/fusion/matcher.cpp.i

CMakeFiles/kit_perception_fusion.dir/fusion/matcher.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kit_perception_fusion.dir/fusion/matcher.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nuc/CLionProjects/My_Sensor_fusion_node/fusion/matcher.cpp -o CMakeFiles/kit_perception_fusion.dir/fusion/matcher.cpp.s

CMakeFiles/kit_perception_fusion.dir/fusion/predictor.cpp.o: CMakeFiles/kit_perception_fusion.dir/flags.make
CMakeFiles/kit_perception_fusion.dir/fusion/predictor.cpp.o: ../fusion/predictor.cpp
CMakeFiles/kit_perception_fusion.dir/fusion/predictor.cpp.o: CMakeFiles/kit_perception_fusion.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nuc/CLionProjects/My_Sensor_fusion_node/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/kit_perception_fusion.dir/fusion/predictor.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/kit_perception_fusion.dir/fusion/predictor.cpp.o -MF CMakeFiles/kit_perception_fusion.dir/fusion/predictor.cpp.o.d -o CMakeFiles/kit_perception_fusion.dir/fusion/predictor.cpp.o -c /home/nuc/CLionProjects/My_Sensor_fusion_node/fusion/predictor.cpp

CMakeFiles/kit_perception_fusion.dir/fusion/predictor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kit_perception_fusion.dir/fusion/predictor.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nuc/CLionProjects/My_Sensor_fusion_node/fusion/predictor.cpp > CMakeFiles/kit_perception_fusion.dir/fusion/predictor.cpp.i

CMakeFiles/kit_perception_fusion.dir/fusion/predictor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kit_perception_fusion.dir/fusion/predictor.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nuc/CLionProjects/My_Sensor_fusion_node/fusion/predictor.cpp -o CMakeFiles/kit_perception_fusion.dir/fusion/predictor.cpp.s

CMakeFiles/kit_perception_fusion.dir/fusion/tracker.cpp.o: CMakeFiles/kit_perception_fusion.dir/flags.make
CMakeFiles/kit_perception_fusion.dir/fusion/tracker.cpp.o: ../fusion/tracker.cpp
CMakeFiles/kit_perception_fusion.dir/fusion/tracker.cpp.o: CMakeFiles/kit_perception_fusion.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nuc/CLionProjects/My_Sensor_fusion_node/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/kit_perception_fusion.dir/fusion/tracker.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/kit_perception_fusion.dir/fusion/tracker.cpp.o -MF CMakeFiles/kit_perception_fusion.dir/fusion/tracker.cpp.o.d -o CMakeFiles/kit_perception_fusion.dir/fusion/tracker.cpp.o -c /home/nuc/CLionProjects/My_Sensor_fusion_node/fusion/tracker.cpp

CMakeFiles/kit_perception_fusion.dir/fusion/tracker.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kit_perception_fusion.dir/fusion/tracker.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nuc/CLionProjects/My_Sensor_fusion_node/fusion/tracker.cpp > CMakeFiles/kit_perception_fusion.dir/fusion/tracker.cpp.i

CMakeFiles/kit_perception_fusion.dir/fusion/tracker.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kit_perception_fusion.dir/fusion/tracker.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nuc/CLionProjects/My_Sensor_fusion_node/fusion/tracker.cpp -o CMakeFiles/kit_perception_fusion.dir/fusion/tracker.cpp.s

CMakeFiles/kit_perception_fusion.dir/fusion/utils.cpp.o: CMakeFiles/kit_perception_fusion.dir/flags.make
CMakeFiles/kit_perception_fusion.dir/fusion/utils.cpp.o: ../fusion/utils.cpp
CMakeFiles/kit_perception_fusion.dir/fusion/utils.cpp.o: CMakeFiles/kit_perception_fusion.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nuc/CLionProjects/My_Sensor_fusion_node/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/kit_perception_fusion.dir/fusion/utils.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/kit_perception_fusion.dir/fusion/utils.cpp.o -MF CMakeFiles/kit_perception_fusion.dir/fusion/utils.cpp.o.d -o CMakeFiles/kit_perception_fusion.dir/fusion/utils.cpp.o -c /home/nuc/CLionProjects/My_Sensor_fusion_node/fusion/utils.cpp

CMakeFiles/kit_perception_fusion.dir/fusion/utils.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kit_perception_fusion.dir/fusion/utils.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nuc/CLionProjects/My_Sensor_fusion_node/fusion/utils.cpp > CMakeFiles/kit_perception_fusion.dir/fusion/utils.cpp.i

CMakeFiles/kit_perception_fusion.dir/fusion/utils.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kit_perception_fusion.dir/fusion/utils.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nuc/CLionProjects/My_Sensor_fusion_node/fusion/utils.cpp -o CMakeFiles/kit_perception_fusion.dir/fusion/utils.cpp.s

# Object files for target kit_perception_fusion
kit_perception_fusion_OBJECTS = \
"CMakeFiles/kit_perception_fusion.dir/fusion/fusion_ekf.cpp.o" \
"CMakeFiles/kit_perception_fusion.dir/fusion/fusion_wrapper.cpp.o" \
"CMakeFiles/kit_perception_fusion.dir/fusion/iou.cpp.o" \
"CMakeFiles/kit_perception_fusion.dir/fusion/kalman_filter.cpp.o" \
"CMakeFiles/kit_perception_fusion.dir/fusion/matcher.cpp.o" \
"CMakeFiles/kit_perception_fusion.dir/fusion/predictor.cpp.o" \
"CMakeFiles/kit_perception_fusion.dir/fusion/tracker.cpp.o" \
"CMakeFiles/kit_perception_fusion.dir/fusion/utils.cpp.o"

# External object files for target kit_perception_fusion
kit_perception_fusion_EXTERNAL_OBJECTS =

libkit_perception_fusion.a: CMakeFiles/kit_perception_fusion.dir/fusion/fusion_ekf.cpp.o
libkit_perception_fusion.a: CMakeFiles/kit_perception_fusion.dir/fusion/fusion_wrapper.cpp.o
libkit_perception_fusion.a: CMakeFiles/kit_perception_fusion.dir/fusion/iou.cpp.o
libkit_perception_fusion.a: CMakeFiles/kit_perception_fusion.dir/fusion/kalman_filter.cpp.o
libkit_perception_fusion.a: CMakeFiles/kit_perception_fusion.dir/fusion/matcher.cpp.o
libkit_perception_fusion.a: CMakeFiles/kit_perception_fusion.dir/fusion/predictor.cpp.o
libkit_perception_fusion.a: CMakeFiles/kit_perception_fusion.dir/fusion/tracker.cpp.o
libkit_perception_fusion.a: CMakeFiles/kit_perception_fusion.dir/fusion/utils.cpp.o
libkit_perception_fusion.a: CMakeFiles/kit_perception_fusion.dir/build.make
libkit_perception_fusion.a: CMakeFiles/kit_perception_fusion.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nuc/CLionProjects/My_Sensor_fusion_node/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX static library libkit_perception_fusion.a"
	$(CMAKE_COMMAND) -P CMakeFiles/kit_perception_fusion.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/kit_perception_fusion.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/kit_perception_fusion.dir/build: libkit_perception_fusion.a
.PHONY : CMakeFiles/kit_perception_fusion.dir/build

CMakeFiles/kit_perception_fusion.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/kit_perception_fusion.dir/cmake_clean.cmake
.PHONY : CMakeFiles/kit_perception_fusion.dir/clean

CMakeFiles/kit_perception_fusion.dir/depend:
	cd /home/nuc/CLionProjects/My_Sensor_fusion_node/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nuc/CLionProjects/My_Sensor_fusion_node /home/nuc/CLionProjects/My_Sensor_fusion_node /home/nuc/CLionProjects/My_Sensor_fusion_node/cmake-build-debug /home/nuc/CLionProjects/My_Sensor_fusion_node/cmake-build-debug /home/nuc/CLionProjects/My_Sensor_fusion_node/cmake-build-debug/CMakeFiles/kit_perception_fusion.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/kit_perception_fusion.dir/depend


# Install script for directory: /usr/src/googletest

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
<<<<<<< HEAD
  set(CMAKE_INSTALL_PREFIX "/home/swh/learning/ros/catkin_ws/install")
=======
  set(CMAKE_INSTALL_PREFIX "/home/nuc/ros/catkin_ws/install")
>>>>>>> 001c0b86613294c152ae9209fbb9e7f0f1ae8147
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
<<<<<<< HEAD
  include("/home/swh/learning/ros/catkin_ws/build/gtest/googlemock/cmake_install.cmake")
=======
  include("/home/nuc/ros/catkin_ws/build/gtest/googlemock/cmake_install.cmake")
>>>>>>> 001c0b86613294c152ae9209fbb9e7f0f1ae8147

endif()


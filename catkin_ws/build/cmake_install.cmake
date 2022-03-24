<<<<<<< HEAD
# Install script for directory: /home/swh/learning/ros/catkin_ws/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/swh/learning/ros/catkin_ws/install")
=======
# Install script for directory: /home/nuc/ros/catkin_ws/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
<<<<<<< HEAD
   "/home/swh/learning/ros/catkin_ws/install/_setup_util.py")
=======
   "/home/nuc/ros/catkin_ws/install/_setup_util.py")
>>>>>>> 001c0b86613294c152ae9209fbb9e7f0f1ae8147
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
<<<<<<< HEAD
file(INSTALL DESTINATION "/home/swh/learning/ros/catkin_ws/install" TYPE PROGRAM FILES "/home/swh/learning/ros/catkin_ws/build/catkin_generated/installspace/_setup_util.py")
=======
file(INSTALL DESTINATION "/home/nuc/ros/catkin_ws/install" TYPE PROGRAM FILES "/home/nuc/ros/catkin_ws/build/catkin_generated/installspace/_setup_util.py")
>>>>>>> 001c0b86613294c152ae9209fbb9e7f0f1ae8147
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
<<<<<<< HEAD
   "/home/swh/learning/ros/catkin_ws/install/env.sh")
=======
   "/home/nuc/ros/catkin_ws/install/env.sh")
>>>>>>> 001c0b86613294c152ae9209fbb9e7f0f1ae8147
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
<<<<<<< HEAD
file(INSTALL DESTINATION "/home/swh/learning/ros/catkin_ws/install" TYPE PROGRAM FILES "/home/swh/learning/ros/catkin_ws/build/catkin_generated/installspace/env.sh")
=======
file(INSTALL DESTINATION "/home/nuc/ros/catkin_ws/install" TYPE PROGRAM FILES "/home/nuc/ros/catkin_ws/build/catkin_generated/installspace/env.sh")
>>>>>>> 001c0b86613294c152ae9209fbb9e7f0f1ae8147
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
<<<<<<< HEAD
   "/home/swh/learning/ros/catkin_ws/install/setup.bash;/home/swh/learning/ros/catkin_ws/install/local_setup.bash")
=======
   "/home/nuc/ros/catkin_ws/install/setup.bash;/home/nuc/ros/catkin_ws/install/local_setup.bash")
>>>>>>> 001c0b86613294c152ae9209fbb9e7f0f1ae8147
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
<<<<<<< HEAD
file(INSTALL DESTINATION "/home/swh/learning/ros/catkin_ws/install" TYPE FILE FILES
    "/home/swh/learning/ros/catkin_ws/build/catkin_generated/installspace/setup.bash"
    "/home/swh/learning/ros/catkin_ws/build/catkin_generated/installspace/local_setup.bash"
=======
file(INSTALL DESTINATION "/home/nuc/ros/catkin_ws/install" TYPE FILE FILES
    "/home/nuc/ros/catkin_ws/build/catkin_generated/installspace/setup.bash"
    "/home/nuc/ros/catkin_ws/build/catkin_generated/installspace/local_setup.bash"
>>>>>>> 001c0b86613294c152ae9209fbb9e7f0f1ae8147
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
<<<<<<< HEAD
   "/home/swh/learning/ros/catkin_ws/install/setup.sh;/home/swh/learning/ros/catkin_ws/install/local_setup.sh")
=======
   "/home/nuc/ros/catkin_ws/install/setup.sh;/home/nuc/ros/catkin_ws/install/local_setup.sh")
>>>>>>> 001c0b86613294c152ae9209fbb9e7f0f1ae8147
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
<<<<<<< HEAD
file(INSTALL DESTINATION "/home/swh/learning/ros/catkin_ws/install" TYPE FILE FILES
    "/home/swh/learning/ros/catkin_ws/build/catkin_generated/installspace/setup.sh"
    "/home/swh/learning/ros/catkin_ws/build/catkin_generated/installspace/local_setup.sh"
=======
file(INSTALL DESTINATION "/home/nuc/ros/catkin_ws/install" TYPE FILE FILES
    "/home/nuc/ros/catkin_ws/build/catkin_generated/installspace/setup.sh"
    "/home/nuc/ros/catkin_ws/build/catkin_generated/installspace/local_setup.sh"
>>>>>>> 001c0b86613294c152ae9209fbb9e7f0f1ae8147
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
<<<<<<< HEAD
   "/home/swh/learning/ros/catkin_ws/install/setup.zsh;/home/swh/learning/ros/catkin_ws/install/local_setup.zsh")
=======
   "/home/nuc/ros/catkin_ws/install/setup.zsh;/home/nuc/ros/catkin_ws/install/local_setup.zsh")
>>>>>>> 001c0b86613294c152ae9209fbb9e7f0f1ae8147
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
<<<<<<< HEAD
file(INSTALL DESTINATION "/home/swh/learning/ros/catkin_ws/install" TYPE FILE FILES
    "/home/swh/learning/ros/catkin_ws/build/catkin_generated/installspace/setup.zsh"
    "/home/swh/learning/ros/catkin_ws/build/catkin_generated/installspace/local_setup.zsh"
=======
file(INSTALL DESTINATION "/home/nuc/ros/catkin_ws/install" TYPE FILE FILES
    "/home/nuc/ros/catkin_ws/build/catkin_generated/installspace/setup.zsh"
    "/home/nuc/ros/catkin_ws/build/catkin_generated/installspace/local_setup.zsh"
>>>>>>> 001c0b86613294c152ae9209fbb9e7f0f1ae8147
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
<<<<<<< HEAD
   "/home/swh/learning/ros/catkin_ws/install/.rosinstall")
=======
   "/home/nuc/ros/catkin_ws/install/.rosinstall")
>>>>>>> 001c0b86613294c152ae9209fbb9e7f0f1ae8147
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
<<<<<<< HEAD
file(INSTALL DESTINATION "/home/swh/learning/ros/catkin_ws/install" TYPE FILE FILES "/home/swh/learning/ros/catkin_ws/build/catkin_generated/installspace/.rosinstall")
=======
file(INSTALL DESTINATION "/home/nuc/ros/catkin_ws/install" TYPE FILE FILES "/home/nuc/ros/catkin_ws/build/catkin_generated/installspace/.rosinstall")
>>>>>>> 001c0b86613294c152ae9209fbb9e7f0f1ae8147
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
<<<<<<< HEAD
  include("/home/swh/learning/ros/catkin_ws/build/gtest/cmake_install.cmake")
  include("/home/swh/learning/ros/catkin_ws/build/learing_communication/cmake_install.cmake")
=======
  include("/home/nuc/ros/catkin_ws/build/gtest/cmake_install.cmake")
  include("/home/nuc/ros/catkin_ws/build/create_turtle/cmake_install.cmake")
  include("/home/nuc/ros/catkin_ws/build/learning_communication/cmake_install.cmake")
  include("/home/nuc/ros/catkin_ws/build/turtle_circle_position/cmake_install.cmake")
  include("/home/nuc/ros/catkin_ws/build/turtle_controller/cmake_install.cmake")
>>>>>>> 001c0b86613294c152ae9209fbb9e7f0f1ae8147

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
<<<<<<< HEAD
file(WRITE "/home/swh/learning/ros/catkin_ws/build/${CMAKE_INSTALL_MANIFEST}"
=======
file(WRITE "/home/nuc/ros/catkin_ws/build/${CMAKE_INSTALL_MANIFEST}"
>>>>>>> 001c0b86613294c152ae9209fbb9e7f0f1ae8147
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")

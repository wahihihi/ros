#!/usr/bin/env sh
# generated from catkin/cmake/template/local_setup.sh.in

# since this file is sourced either use the provided _CATKIN_SETUP_DIR
# or fall back to the destination set at configure time
<<<<<<< HEAD
: ${_CATKIN_SETUP_DIR:=/home/swh/learning/ros/catkin_ws/install}
=======
: ${_CATKIN_SETUP_DIR:=/home/nuc/ros/catkin_ws/install}
>>>>>>> 001c0b86613294c152ae9209fbb9e7f0f1ae8147
CATKIN_SETUP_UTIL_ARGS="--extend --local"
. "$_CATKIN_SETUP_DIR/setup.sh"
unset CATKIN_SETUP_UTIL_ARGS

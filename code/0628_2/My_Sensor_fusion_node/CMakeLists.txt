cmake_minimum_required(VERSION 3.16.3)
add_compile_options(-std=c++11 -g)
set(CMAKE_CXX_STANDARD 14)
set(CMAKE_BUILD_TYPE Debug)
project(My_Sensor_fusion_node)

find_package(Boost REQUIRED COMPONENTS filesystem)
find_package(Eigen3 REQUIRED)
find_package(OpenCV REQUIRED)
find_package(yaml-cpp REQUIRED)



include_directories(
    ${EIGEN3_INCLUDE_DIRS}
)


file(GLOB _SRCS "fusion/*.cpp")
add_library(kit_perception_fusion ${_SRCS})
target_link_libraries(kit_perception_fusion PUBLIC
    ${OpenCV_LIBS}
    yaml-cpp)


set(EZCFG_STRUCT_HEADER_FILE ${CMAKE_CURRENT_SOURCE_DIR}/input_data_type.h)
add_subdirectory(easy_config)
add_executable(My_Sensor_fusion_node
        fusion_node.cpp
        frame_build.cpp)



target_link_libraries(My_Sensor_fusion_node PRIVATE
        ${Boost_LIBRARIES}
        kit_perception_fusion
        ezcfg::ezcfg)

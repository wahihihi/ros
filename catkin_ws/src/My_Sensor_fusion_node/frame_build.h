//
// Created by swh on 22-6-26.
//
#pragma once
#include <string>
#include <list>
#include <tuple>
#include <boost/filesystem.hpp>
#include "fusion/object.h"
#include "input_data_type.h"
#include <iostream>


#ifndef MY_SENSOR_FUSION_NODE_FRAME_BUILD_H
#define MY_SENSOR_FUSION_NODE_FRAME_BUILD_H

namespace proto_input
{
    enum FileTag
    {
        LOCATION,
        CAMERA,
        LIDAR,
        RADAR
    };
    std::list<std::tuple<double,FileTag,std::string> > buildSensorInputSequence(boost::filesystem::path data_dir,const char* data_name, FileTag tag);
    std::vector<std::tuple<double,FileTag,std::string>> frameTimeMatch(std::list<std::tuple<double,FileTag,std::string>>&& data,size_t type_name);
    std::vector<std::tuple<double, FileTag, std::string>> mergeInputSequece(std::vector<std::list<std::tuple<double,FileTag,std::string>>>&& data );

    kit::perception::fusion::LiDARObjectPtr makeLiDARObjectPtr(LidarObject raw_lo,double time);
    kit::perception::fusion::CameraObjectPtr  makeCameraObjectPtr(CameraObject raw_co,double time);
}


#endif //MY_SENSOR_FUSION_NODE_FRAME_BUILD_H

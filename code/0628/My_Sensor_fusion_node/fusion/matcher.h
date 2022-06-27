//
// Created by swh on 22-6-26.
//
#pragma once
#ifndef MY_SENSOR_FUSION_NODE_MATCHER_H
#define MY_SENSOR_FUSION_NODE_MATCHER_H

#include <string>
#include "utils.h"
#include "state.h"
#include "yaml-cpp/yaml.h"
#include "munkres.hpp"

namespace kit {
namespace perception {
namespace fusion {
class Matcher {
public:
    explicit Matcher(const std::string& config_file);

private:
    float IoUCamToFusion(const CameraObjectPtr& cam_obj,
                         const FusionObjectPtr& fusion_obj);

    float IoULiDARToFusion(const LiDARObjectPtr& lidar_obj,
                           const FusionObjectPtr& fusion_obj);

    float IoURadarToFusion(const RadarObjectPtr& lidar_obj,
                            const FusionObjectPtr& fusion_obj);

    void Preprocess(const RadarObjectListPtr& radar_obj_list,
                    const FusionObjectListPtr& fusion_obj_list);

    Eigen::Vector3d TransformToCameraFrame(const Eigen::Vector3d& point,
                                           const Eigen::Affine3d& extrinsic);

    Eigen::Vector2d TransformToImageFrame(const Eigen::Vector3d& point,
                                          const Vector6d& intrinsic);

    Eigen::Vector2d SizeofRadarObjectInImage(const RadarObjectPtr& radar_obj,
                                            const Eigen::Affine3d& extrinsic,
                                            const Vector6d& intrinsic);
    bool initialized_ = false;
    Vector6d cam_intrinsic_;
    Eigen::Affine3d extrinsic_radar_to_lidar_;
    Eigen::Affine3d extrinsic_radar_to_camera_;
    Eigen::Affine3d extrinsic_radar_to_baselink_;
    Eigen::Affine3d extrinsic_lidar_to_baselink_;
    Eigen::Affine3d extrinsic_camera_to_baselink_;
    Eigen::Affine3d extrinsic_camera_to_lidar_;

    float radar_nearest_dist_thres_ = 0.3;
    float radar_furthest_dist_thres_ = 20.0;
    float default_radar_obj_length_ = 1.0;
    float default_radar_obj_width_ = 1.0;
    float default_radar_obj_height_ = 1.8;
    float matching_thres_ = 0.1;

    int matching_offset_in_ux_ = 0;
    int matching_offset_in_vy_ = 50;

    SensorType main_sensor_ = SensorType::LIDAR;
};
}
}
}

#endif //MY_SENSOR_FUSION_NODE_MATCHER_H

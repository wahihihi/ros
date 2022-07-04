//
// Created by swh on 22-6-26.
//

#include "matcher.h"
#include <iostream>

namespace kit{
namespace perception{
namespace fusion{

Matcher::Matcher(const std::string &config_file):
    initialized_(false),
    main_sensor_(SensorType::LIDAR)
{
    YAML::Node config = YAML::LoadFile(config_file);
    const auto camera_intrinsic_vec = config["camera_intrinsics"]["P"].as<std::vector<double>>();
    cam_intrinsic_(0) = camera_intrinsic_vec[0];
    cam_intrinsic_(1) = camera_intrinsic_vec[1];
    cam_intrinsic_(2) = camera_intrinsic_vec[2];
    cam_intrinsic_(3) = camera_intrinsic_vec[3];
    cam_intrinsic_(4) = camera_intrinsic_vec[4];
    cam_intrinsic_(5) = camera_intrinsic_vec[5];

    const auto camera_rotate = config["camera_extrinsics"]["rotation"];
    const auto camera_translation = config["camera_extrinsics"]["translation"];
    {
        Eigen::Translation3d translation(
                camera_translation["x"].as<double>(),
                camera_translation["y"].as<double>(),
                camera_translation["z"].as<double>());
        Eigen::Quaterniond quater(
                camera_rotate["w"].as<double>(),
                camera_rotate["x"].as<double>(),
                camera_rotate["y"].as<double>(),
                camera_rotate["z"].as<double>());
        extrinsic_camera_to_lidar_ = translation * quater.toRotationMatrix();
    }

    const auto lidar_rotate = config["lidar_extrinsics"]["rotation"];
    const auto lidar_translation = config["lidar_extrinsics"]["translation"];
    {
        Eigen::Translation3d translation(
                lidar_translation["x"].as<double>(),
                        lidar_translation["y"].as<double>(),
                                lidar_translation["z"].as<double>());
        Eigen::Quaterniond quater(lidar_rotate["w"].as<double>(),
                lidar_rotate["x"].as<double>(),
                        lidar_rotate["y"].as<double>(),
                                lidar_rotate["z"].as<double>());
        extrinsic_lidar_to_baselink_ = translation * quater.toRotationMatrix();
        extrinsic_camera_to_baselink_ = extrinsic_camera_to_lidar_ * extrinsic_lidar_to_baselink_;
        std::cout << "camera to baselink = " << extrinsic_camera_to_baselink_.matrix() << std::endl;
    }
}

}
}
}
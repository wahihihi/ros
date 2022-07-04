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

bool Matcher::Match(const RadarObjectListPtr &radar_obj_list,
                    const FusionObjectListPtr &global_obj_list,
                    std::map<size_t, int> &radar_global_map) {
    radar_global_map.clear();
    for (size_t i = 0; i < radar_obj_list->objs.size(); ++i) {
        radar_global_map[i] = -1;
    }
    if (global_obj_list->objs.size() == 0)
    {
        return true;
    }

    //compose bipartite weight matrix
    std::vector<std::vector<float>> weights;
    for (size_t i = 0; i < radar_obj_list->objs.size(); ++i) {
        std::vector<float> row(global_obj_list->objs.size(),0);
        weights.push_back(row);
        for (size_t j = 0; j < global_obj_list->objs.size(); ++j) {
            weights[i][j] = IoURadarToFusion(radar_obj_list->objs[i],global_obj_list->objs[j]);
        }
    }

    auto f = [&](size_t r, size_t c) {return weights[r][c];};
    auto res = munkres_algorithm<float>(radar_obj_list->objs.size(),
                                        global_obj_list->objs.size(),
                                        f);
    auto is_matching = [&](const size_t r, const size_t c){
        const auto ii = std::find_if(std::begin(res), std::end(res),[&](const auto& x){
            return (x.first == r and x.second == c);
        });
        return ii != std::end(res);
    };
    for (size_t i = 0; i < radar_obj_list->objs.size(); ++i) {
        for (size_t j = 0; j < global_obj_list->objs.size(); ++j) {
            if (is_matching(i,j)){
                radar_global_map[i] = j;
            }
        }
    }
    return true;

}

bool Matcher::Match(const CameraObjectListPtr &cam_obj_list,
                    const FusionObjectListPtr &global_obj_list,
                    std::map<size_t, int> &cam_global_map) {
    cam_global_map.clear();
    for (size_t i = 0; i < cam_obj_list->objs.size(); ++i) {
        cam_global_map[i] = -1;
    }
    if (global_obj_list->objs.size() == 0)
    {
        return true;
    }

    //compose bipartite weight matrix
    std::vector<std::vector<float>> weights;
    for (size_t i = 0; i < cam_obj_list->objs.size(); ++i) {
        std::vector<float> row(global_obj_list->objs.size(),0);
        weights.push_back(row);
        for (size_t j = 0; j < global_obj_list->objs.size(); ++j) {
            weights[i][j] = IoUCamToFusion(cam_obj_list->objs[i],global_obj_list->objs[j]);
        }
    }

    auto f = [&](size_t r, size_t c) {return weights[r][c];};
    auto res = munkres_algorithm<float>(cam_obj_list->objs.size(),
                                        global_obj_list->objs.size(),
                                        f);
    auto is_matching = [&](const size_t r, const size_t c){
        const auto ii = std::find_if(std::begin(res), std::end(res),[&](const auto& x){
            return (x.first == r and x.second == c);
        });
        return ii != std::end(res);
    };
    for (size_t i = 0; i < cam_obj_list->objs.size(); ++i) {
        for (size_t j = 0; j < global_obj_list->objs.size(); ++j) {
            if (is_matching(i,j)){
                cam_global_map[i] = j;
            }
        }
    }
    return true;
}

bool Matcher::Match(const LiDARObjectListPtr& lidar_obj_list,
                    const FusionObjectListPtr& global_obj_list,
                    std::map<size_t, int>& lidar_global_map){
    lidar_global_map.clear();
    for (size_t i = 0; i < lidar_obj_list->objs.size(); ++i) {
        lidar_global_map[i] = -1;
    }
    if (global_obj_list->objs.size() == 0)
    {
        return true;
    }

    //compose bipartite weight matrix
    std::vector<std::vector<float>> weights;
    for (size_t i = 0; i < lidar_obj_list->objs.size(); ++i) {
        std::vector<float> row(global_obj_list->objs.size(),0);
        weights.push_back(row);
        for (size_t j = 0; j < global_obj_list->objs.size(); ++j) {
            weights[i][j] = IoULiDARToFusion(lidar_obj_list->objs[i],global_obj_list->objs[j]);
        }
    }

    auto f = [&](size_t r, size_t c) {return weights[r][c];};
    auto res = munkres_algorithm<float>(lidar_obj_list->objs.size(),
                                        global_obj_list->objs.size(),
                                        f);
    auto is_matching = [&](const size_t r, const size_t c){
        const auto ii = std::find_if(std::begin(res), std::end(res),[&](const auto& x){
            return (x.first == r and x.second == c);
        });
        return ii != std::end(res);
    };
    for (size_t i = 0; i < lidar_obj_list->objs.size(); ++i) {
        for (size_t j = 0; j < global_obj_list->objs.size(); ++j) {
            if (is_matching(i,j)){
                lidar_global_map[i] = j;
            }
        }
    }
    return true;
}

float Matcher::IoULiDARToFusion(
        const LiDARObjectPtr &lidar_obj,
        const FusionObjectPtr &fusion_obj)
{
//        return std::sqrt(std::pow(lidar_obj->x - fusion_obj->x,2) + std::pow(lidar_obj->y - fusion_obj->y,2));
    return IoUIn3D(lidar_obj,fusion_obj);
}

float Matcher::IoUCamToFusion(
        const CameraObjectPtr& cam_obj,
        const FusionObjectPtr& fusion_obj) {
    float dist = 0.0f;
    if (main_sensor_ == SensorType::LIDAR) {
        BBox2D pred;
        pred.x = cam_obj->ux;
        pred.y = cam_obj->vy;
        pred.width = cam_obj->width;
        pred.height = cam_obj->height;

        BBox3D tgt;
        tgt.x = fusion_obj->x;
        tgt.y = fusion_obj->y;
        tgt.z = fusion_obj->z;
        tgt.width = fusion_obj->width;
        tgt.height = fusion_obj->height;
        tgt.length = fusion_obj->length;

        dist = IoUIn2D(pred, tgt, extrinsic_camera_to_baselink_.inverse(), cam_intrinsic_);
    } else if (main_sensor_ == SensorType::CAMERA) {
        BBox2D pred;
        pred.x = cam_obj->ux;
        pred.y = cam_obj->vy;
        pred.width = cam_obj->width;
        pred.height = cam_obj->height;

        BBox2D tgt;
        tgt.x = fusion_obj->ux;
        tgt.y = fusion_obj->vy;
        tgt.width = fusion_obj->width_2d;
        tgt.height = fusion_obj->height_2d;

        dist = IoUIn2D(pred, tgt);
    }
    return dist;
}

float Matcher::IoURadarToFusion(
        const RadarObjectPtr& radar_obj,
        const FusionObjectPtr& fusion_obj) {
    float dist = 0.0f;
    if (main_sensor_ == SensorType::LIDAR) {
        dist = std::sqrt(std::pow(radar_obj->x - fusion_obj->x, 2) +
                         std::pow(radar_obj->y - fusion_obj->y, 2));
    } else if (main_sensor_ == SensorType::CAMERA) {
        BBox3D pred;
        pred.x = radar_obj->x;
        pred.y = radar_obj->y;
        pred.z = radar_obj->z;
        pred.width = 1.0;
        pred.height = 1.0;
        pred.length = 1.0;

        BBox2D tgt;
        tgt.x = fusion_obj->ux;
        tgt.y = fusion_obj->vy;
        tgt.width = fusion_obj->width_2d;
        tgt.height = fusion_obj->height_2d;

        dist = IoUIn2D(tgt, pred, extrinsic_radar_to_camera_, cam_intrinsic_);
    }
    return dist;
}
}
}
}
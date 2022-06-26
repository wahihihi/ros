//
// Created by swh on 22-6-26.
//
#pragma once
#include <mutex>
#include "object.h"
#include "fusion_ekf.h"

#ifndef MY_SENSOR_FUSION_NODE_TRACKER_H
#define MY_SENSOR_FUSION_NODE_TRACKER_H

namespace kit{
namespace perception{
namespace fusion{
class Tracker {
private:
    void PerodicallyUpdateLifeDuration();

    std::vector<std::shared_ptr<FusionEKF>> motion_filters_;

    std::mutex global_mutex_;
    int max_live_duration_ = 5;
    int startup_duration_ = 6;
    float dist_thres_ = 1.0;
    float iou_thres_ = 0.5;
    FusionObjectListPtr global_obj_list_;
};
}
}
}


#endif //MY_SENSOR_FUSION_NODE_TRACKER_H

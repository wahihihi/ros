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
public:
    Tracker():
        global_obj_list_(std::make_shared<FusionObjectList>(FusionObjectList())),
        max_live_duration_(6),
        startup_duration_(6),
        dist_thres_(0.5),
        iou_thres_(0.5) {}

    bool Update(const FusionObjectList &local_obj_list,const std::map<size_t,int>& map);
    bool Update(const LiDARObjectListPtr &local_obj_list,const std::map<size_t,int>& map);
    bool Update(const CameraObjectListPtr &local_obj_list,const std::map<size_t,int>& map);
    bool Update(const RadarObjectListPtr &local_obj_list,const std::map<size_t,int>& map);

    void GetFusionResults(const FusionObjectListPtr &res);
    void GetGlobalObject(const FusionObjectListPtr &res);

private:
    void PeriodicallyUpdateLifeDuration();

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

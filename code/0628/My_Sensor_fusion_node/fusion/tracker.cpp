//
// Created by swh on 22-6-26.
//

#include "tracker.h"

namespace kit {
namespace perception {
namespace fusion {

void Tracker::PeriodicallyUpdateLifeDuration() {
    for (size_t i = 0;i < global_obj_list_->objs.size();i++) {
        auto& global_obj = global_obj_list_->objs[i];
        --global_obj->life_duration;
        if (global_obj->life_duration <=0 ){
            global_obj_list_->objs.erase(global_obj_list_->objs.begin() + i);
        }
    }
}

void Tracker::GetGlobalObject(const FusionObjectListPtr &res) {
    res->objs.clear();
    {
        std::lock_guard<std::mutex> guard(global_mutex_);
        res->time_ns = global_obj_list_->time_ns;
        for (size_t i = 0; i < global_obj_list_->objs.size(); ++i) {
            FusionObjectPtr new_obj = std::make_shared<FusionObject>(FusionObject());
            *new_obj = *global_obj_list_->objs[i];
            res->objs.push_back(new_obj);
        }
    }
}

void Tracker::GetFusionResults(const FusionObjectListPtr &res) {
    res->objs.clear();
    {
        std::lock_guard<std::mutex> guard(global_mutex_);
        PeriodicallyUpdateLifeDuration();
        res->time_ns = global_obj_list_->time_ns;
        for (size_t i = 0; i < global_obj_list_->objs.size(); ++i) {
            FusionObjectPtr new_obj =
                    std::make_shared<FusionObject>(FusionObject());
            *new_obj = *global_obj_list_->objs[i];
            res->objs.push_back(new_obj);
        }
    }
}

}
}
}
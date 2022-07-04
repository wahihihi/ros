//
// Created by swh on 22-6-26.
//

#include "predictor.h"

namespace kit {
namespace perception {
namespace fusion {

bool Predictor::Predict(const FusionObjectListPtr &fusion_obj_list, double ts) {

    double delta_t = ts - fusion_obj_list->time_ns;
//    std::cout<<"global timestamp - local timestam = " << delta_t <<std::endl;
    if (delta_t < -0.3)
    {
        return false;
    }
    for (auto&  fusion_obj : fusion_obj_list->objs)
    {
        Eigen::Vector3d velo(fusion_obj->velo_x,fusion_obj->velo_y,fusion_obj->velo_z);
        fusion_obj->velo_x += velo(0) * delta_t;
        fusion_obj->velo_y += velo(1) * delta_t;
        fusion_obj->velo_z += velo(2) * delta_t;
    }
    return true;

}

}
}
}
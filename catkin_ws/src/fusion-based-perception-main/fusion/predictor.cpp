#include "predictor.h"

namespace kit {
namespace perception {
namespace fusion {

bool Predictor::Predict(const FusionObjectListPtr &fusion_obj_list, double ts) {
    // TODO: Predict global objects to local timestamp
    std::cout << "global timestamp - local timestamp = " << ts - fusion_obj_list->time_ns << std::endl;
    double delta_t = ts - fusion_obj_list->time_ns;
    // if measurement is too old , abandon it
    if (delta_t < -0.3){
        return false;
    }
    for (auto& fusion_obj : fusion_obj_list->objs) {
        Eigen::Vector3d velo(fusion_obj->velo_x,fusion_obj->velo_y,fusion_obj->velo_z);
        fusion_obj->velo_x += velo(0) * delta_t;
        fusion_obj->velo_y += velo(1) * delta_t;
        fusion_obj->velo_z += velo(2) * delta_t;
    }
    return true;
}

}  // namespace fusion
}  // namespace perception
}  // namespace kit

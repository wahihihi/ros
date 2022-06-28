//
// Created by swh on 22-6-26.
//
#include <Eigen/Core>
#include "object.h"
#ifndef MY_SENSOR_FUSION_NODE_PREDICTOR_H
#define MY_SENSOR_FUSION_NODE_PREDICTOR_H

namespace kit {
namespace perception {
namespace fusion {

class Predictor {
public:
    Predictor() = default;
    bool Predict(const FusionObjectListPtr &fusion_obj_list, double ts);
};

}
}
}

#endif //MY_SENSOR_FUSION_NODE_PREDICTOR_H

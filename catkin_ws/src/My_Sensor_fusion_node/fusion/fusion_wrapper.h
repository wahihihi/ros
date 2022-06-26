//
// Created by swh on 22-6-26.
//

#ifndef MY_SENSOR_FUSION_NODE_FUSION_WRAPPER_H
#define MY_SENSOR_FUSION_NODE_FUSION_WRAPPER_H

#include "object.h"
#include "tracker.h"
#include "matcher.h"
#include "predictor.h"

namespace kit {
namespace perception {
namespace fusion {

class FusionWrapper {
public:
    FusionWrapper(const std::string& config_file);

private:
    std::shared_ptr<fusion::Tracker> tracker_;
    std::shared_ptr<fusion::Matcher> matcher_;
    std::shared_ptr<fusion::Predictor> predictor_;
};

}
}
}


#endif //MY_SENSOR_FUSION_NODE_FUSION_WRAPPER_H

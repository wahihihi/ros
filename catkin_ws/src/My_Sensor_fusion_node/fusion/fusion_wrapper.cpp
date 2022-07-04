//
// Created by swh on 22-6-26.
//

#include "fusion_wrapper.h"
namespace kit {
namespace perception {
namespace fusion {

FusionWrapper::FusionWrapper(const std::string &config_file) :
    predictor_(std::shared_ptr<Predictor>(new Predictor())),
    matcher_(std::shared_ptr<Matcher>(new Matcher())),
    tracker_(std::shared_ptr<Tracker>(new Tracker()))
{}

bool FusionWrapper::Update(const FramePtr &frame) {

    fusion::FusionObjectListPtr global_obj_list = std::make_shared<fusion::FusionObjectList>(fusion::FusionObjectList());

    if (frame->lidar_objs->objs.size() > 0)
    {
        std::cout << "updating with lidar object ..." << std::endl;
        tracker_->GetGlobalObject(global_obj_list);
        if (!predictor_->Predict(global_obj_list,frame->lidar_objs->time_ns)){
            std::cout << "predict error for lidar measurement." << std::endl;
        }
    }
    return true;
}

bool FusionWrapper::GetFusionResult(const FusionObjectListPtr &res) {
    tracker_->GetFusionResults(res);
    return true;
}

}
}
}
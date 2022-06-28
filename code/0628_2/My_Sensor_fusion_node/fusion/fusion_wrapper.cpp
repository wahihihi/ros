//
// Created by swh on 22-6-26.
//

#include "fusion_wrapper.h"
namespace kit {
namespace perception {
namespace fusion {

FusionWrapper::FusionWrapper(const std::string &config_file) :
    predictor_(std::shared_ptr<Predictor>(new Predictor())),
    matcher_(std::shared_ptr<Matcher>(new Matcher(config_file))),
    tracker_(std::shared_ptr<Tracker>(new Tracker()))
{}

bool FusionWrapper::Update(const FramePtr &frame) {

    fusion::FusionObjectListPtr global_obj_list =
            std::make_shared<fusion::FusionObjectList>(fusion::FusionObjectList());

    if (frame->lidar_objs->objs.size() > 0)
    {
        std::cout << "updating with lidar object ..." << std::endl;
        tracker_->GetGlobalObject(global_obj_list);
        if (!predictor_->Predict(global_obj_list,frame->lidar_objs->time_ns)){
            std::cout << "predict error for lidar measurement." << std::endl;
            return false;
        }
        std::map<size_t,int> local_global_map;
        if (!matcher_->Match(frame->lidar_objs,global_obj_list,local_global_map))
        {
            std::cout<<"match failed for lidar and global."<< std::endl;
            return false;
        }
        // update global object with lidar measurement
        tracker_->Update(frame->lidar_objs,local_global_map);
    }

//    if (frame->radar_objs->objs.size() > 0)
//    {
//        std::cout << "updating with lidar object ..." << std::endl;
//        tracker_->GetGlobalObject(global_obj_list);
//        if (!predictor_->Predict(global_obj_list,frame->radar_objs->time_ns)){
//            std::cout << "predict error for lidar measurement." << std::endl;
//            return false;
//        }
//        std::map<size_t,int> local_global_map;
//        if (!matcher_->Match(frame->radar_objs,global_obj_list,local_global_map))
//        {
//            std::cout<<"match failed for lidar and global."<< std::endl;
//            return false;
//        }
//        // update global object with lidar measurement
//        tracker_->Update(frame->radar_objs,local_global_map);
//    }

    if (frame->camera_objs->objs.size() > 0)
    {
        std::cout << "updating with lidar object ..." << std::endl;
        tracker_->GetGlobalObject(global_obj_list);
        if (!predictor_->Predict(global_obj_list,frame->camera_objs->time_ns)){
            std::cout << "predict error for lidar measurement." << std::endl;
            return false;
        }
        std::map<size_t,int> local_global_map;
        if (!matcher_->Match(frame->camera_objs,global_obj_list,local_global_map))
        {
            std::cout<<"match failed for lidar and global."<< std::endl;
            return false;
        }
        // update global object with lidar measurement
        tracker_->Update(frame->camera_objs,local_global_map);
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
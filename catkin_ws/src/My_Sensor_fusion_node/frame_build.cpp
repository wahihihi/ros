//
// Created by swh on 22-6-26.
//

#include "frame_build.h"

namespace proto_input
{
    std::list<std::tuple<double,FileTag,std::string> > buildSensorInputSequence(boost::filesystem::path data_dir,const char* data_name, FileTag tag){
        std::list<std::tuple<double,FileTag,std::string> >  data_seq;
        if (!boost::filesystem::exists(data_dir) || !boost::filesystem::is_directory(data_dir))
        {
            std::cout << data_name << " data directory does not exist! \n ";
            abort();
        }
        for (auto const& dir_entry : boost::filesystem::directory_iterator{data_dir}) {
            if (!boost::filesystem::is_directory(dir_entry.path()))
                data_seq.emplace_back(std::stod(dir_entry.path().stem().string()),tag,dir_entry.path().string());
        }
        return data_seq;
    }

    std::vector<std::tuple<double,FileTag,std::string>> frameTimeMatch(std::list<std::tuple<double,FileTag,std::string>>&& data,size_t type_num)
    {
        std::map<FileTag,std::list<std::tuple<double,FileTag,std::string>>::iterator> frame;
        std::vector<std::tuple<double,FileTag,std::string>> res;
        res.reserve(data.size());
        for (auto  it = data.begin(); it != data.end(); ++it) {
            frame.emplace(std::get<1>(*it),it);
            if (frame.size() == type_num)
            {
                for (auto& pair : frame) {
                    res.push_back(std::move(*(pair.second)));
                }
                frame.clear();
            }
        }
        return res;
    }

    std::vector<std::tuple<double,FileTag,std::string>> mergeInputSequece(std::vector<std::list<std::tuple<double,FileTag,std::string>>>&& data){
        auto comp = [](auto& l,auto& r ){return std::get<0>(l) < std::get<0>(r);};
        std::list<std::tuple<double,FileTag,std::string>> merge_list = std::move(data.front());
        merge_list.sort(comp);

        for (size_t i = 0; i < data.size(); i++) {
            data[i].sort(comp);
            merge_list.merge(std::move(data[i]),comp);
        }
        return frameTimeMatch(std::move(merge_list),data.size());
    }

    kit::perception::fusion::LiDARObjectConstPtr makeLiDARObjectPtr(LidarObject raw_lo,double time)
    {
        auto lo = std::make_shared<kit::perception::fusion::LiDARObject>();
        lo->time_ns = time;
        lo->id =
    }
}
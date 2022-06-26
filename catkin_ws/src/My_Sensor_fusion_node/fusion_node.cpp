#include "frame_build.h"
#include <interpreter.hpp>
#include "fusion/fusion_wrapper.h"
#include "frame_build.h"
#include "input_data_type.h"

inline void printMregeRes(const std::vector<std::tuple<double, proto_input::FileTag, std::string> >& data)
{
    int i = 0;
    for (auto& v : data)
    {
        std::cout<<" "<< std::to_string(std::get<0>(v)) << ": "  <<std::get<1>(v)<<" : "<<std::get<2>(v) << std::endl;
        i++;
        if (i == 30) break;
    }

}

int main(int argc, char** argv) {
    if (argc != 5)
    {
        std::cout << "Need 4 args!\n";
        return 0;
    }

//    std::list<std::tuple<double,proto_input::FileTag,std::string> > data_seq = proto_input::buildSensorInputSequence(argv[1],"Location",proto_input::FileTag::LOCATION);
    std::vector<std::tuple<double,proto_input::FileTag,std::string>>&& data_frame_seq = proto_input::mergeInputSequece({
        proto_input::buildSensorInputSequence(argv[2],"Location",proto_input::FileTag::LOCATION),
        proto_input::buildSensorInputSequence(argv[3],"Camera",proto_input::FileTag::CAMERA),
        proto_input::buildSensorInputSequence(argv[4],"Lidar",proto_input::FileTag::LIDAR)
    });

    printMregeRes(data_frame_seq);
    ezcfg::Interpreter itp;
//    kit::perception::fusion::FusionWrapper fusion{ argv[1] };
    for (auto it = data_frame_seq.begin(); it < data_frame_seq.end();)
    {
        // anyway ,first step is take the timestamp and pose from sensor
        itp.loadFile(std::get<2>(*it));
        proto_input::Location pose;
        itp.lex.matchID("header");
        itp.parse(pose.header);
        itp.lex.matchID("pose");
        itp.parse(pose.pose);
        ++it;

        std::shared_ptr<kit::perception::fusion::Frame> frame = std::make_shared<kit::perception::fusion::Frame>();
        //get camera detection results
        if (std::get<1>(*it) == proto_input::FileTag::CAMERA)
        {
            proto_input::CameraObject raw_co;
            kit::perception::fusion::CameraObjectListPtr co_list = std::make_shared<kit::perception::fusion::CameraObjectList>();
            itp.loadFile(std::get<2>(*it));
            while (itp.lex.getToken() == ezcfg::Token::ID && itp.lex.getTokenText() == "perception_obstacle")
            {
                itp.lex.next();
                itp.parse(raw_co);
                co_list->objs.push_back()
            }
        }


    }
}

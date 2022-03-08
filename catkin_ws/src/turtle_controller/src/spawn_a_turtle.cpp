#include "ros/ros.h"
#include <turtlesim/Spawn.h>
#include <turtle_controller/TurtlesSrv.h>
#include <sstream>

class SpawnATurtle{
public:
    SpawnATurtle(){
        cli_ = n_.serviceClient<turtlesim::Spawn>("/spawn");
        ser_ = n_.advertiseService("/spawn_a_turtle", &SpawnATurtle::callback, this);
        for (int i = 0; i < 100; ++i) {
            posRand[i] = i;
        }
        std::random_shuffle(posRand,posRand+100);
        posIdx = rand()%100;
        posIdy = rand()%100;
    }

    bool callback(turtle_controller::TurtlesSrv::Request &req,
                  turtle_controller::TurtlesSrv::Response &res){
        turtlesim::Spawn srv;
        srv.request.x = 0.5 +  0.1*posRand[posIdx];
        srv.request.y = 0.5 +  0.1*posRand[posIdy];
        srv.request.name = req.name;
        posIdx = (posIdx+1)%100;
        posIdy = (posIdy+1)%100;

        if (cli_.call(srv)){
            std::stringstream ss;
            ss << "successfully spawn a turtle "<<srv.request.name<<"at ("<< srv.request.x<<","<<srv.request.y<<")";
            res.result = ss.str();
        }else{
            res.result = "wrong! see errors in trutlesim console.";
        }
        return true;
    }
private:
    ros::NodeHandle n_;
    ros::ServiceServer ser_;
    ros::ServiceClient cli_;
    int posRand[100];
    int posIdx,posIdy;
};

int main(int argc,char** argv){
    ros::init(argc,argv,"spawn_a_turtle");
    ros::service::waitForService("/spawn");
    SpawnATurtle SATObject;
    ros::spin();
    return 0;
}
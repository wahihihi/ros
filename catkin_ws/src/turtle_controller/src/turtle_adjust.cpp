//
// Created by swh on 2022/3/8.
//
#include "ros/ros.h"
#include "turtle_controller/TurtleControlSrv.h"
#include "sstream"

int main(int argc,char** argv){
    ros::init(argc,argv,"turtle_adjust");
    ros::NodeHandle n;

    ros::service::waitForService("/turtle_control_circle");
    ros::ServiceClient client_= n.serviceClient<turtle_controller::TurtleControlSrv>("/turtle_control_circle");

    turtle_controller::TurtleControlSrv srv;
    srv.request.name = argv[1];
    srv.request.state = argv[2];
    srv.request.c_velocity = std::stof(argv[3]);
    ROS_INFO("---Call service to adjust a turtle[name2 : %s , state: %s , c_velocity : %s]",
             srv.request.name.c_str(),srv.request.state.c_str(),argv[3]);

    client_.call(srv);

    ROS_INFO("Show adjust turtle result: %s",srv.response.result.c_str());
    return 0;
}

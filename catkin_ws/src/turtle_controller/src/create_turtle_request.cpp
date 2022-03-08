//
// Created by nuc on 2022/3/8.
//
#include "ros/ros.h"
#include "turtle_controller/TurtlesSrv.h"

int main(int argc,char** argv){
    ros::init(argc,argv,"create_turtle_request");
    ros::NodeHandle n;

    ros::service::waitForService("/spawn_a_turtle");
    ros::ServiceClient client_= n.serviceClient<turtle_controller::TurtlesSrv>("/spawn_a_turtle");

    turtle_controller::TurtlesSrv srv;
    srv.request.name = argv[1];
    ROS_INFO("Call service to spwan a turtle[name : %s]",
             srv.request.name.c_str());

    client_.call(srv);

    ROS_INFO("Show spawn turtle result: %s",srv.response.result.c_str());
    return 0;
}

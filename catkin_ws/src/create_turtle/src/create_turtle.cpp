#include "ros/ros.h"
#include "turtlesim/Spawn.h"

int main(int argc, char** argv){
    ros::init(argc,argv,"turtle_spawner");
    ros::NodeHandle node;

    ros::service::waitForService("/spawn");
    ros::ServiceClient turtle_spawner = node.serviceClient<turtlesim::Spawn>("/spawn");

    turtlesim::Spawn srv;
    srv.request.x = 1.0;
    srv.request.y = 1.0;
    if (argc > 1)srv.request.name = argv[1];

    ROS_INFO("Call service to spawn a turtle at [%lf,%lf],named %s",(double)srv.request.x,(double)srv.request.y,argv[1]);
    turtle_spawner.call(srv);

    ROS_INFO("spawned a baby,OK");

    return 0;
}
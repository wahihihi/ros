#include <sstream>
#include "ros/ros.h"
#include "geometry_msgs/Twist.h"
#include "turtlesim/Pose.h"

void chatterCallback(const turtlesim::Pose& msg){
    ROS_INFO("Turtle is at: [%lf,%lf,%lf]",(double)(msg.x),(double)(msg.y),(double)(msg.theta));
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "turtle_circle_position");
    ros::NodeHandle n;
    ros::Publisher turtle_circle_pub = n.advertise<geometry_msgs::Twist>("/turtle1/cmd_vel", 1);
    ros::Subscriber turtle_circle_sub = n.subscribe("/turtle1/pose",1,chatterCallback);
    ros::Rate loop_rate(10);

    while(ros::ok()){
        geometry_msgs::Twist msg;
        msg.linear.x = 2;
        msg.linear.y = 0;
        msg.linear.z = 0;
        msg.angular.x = 0;
        msg.angular.y = 0;
        msg.angular.z = 1.8;
        ROS_INFO("Turtle is turning around with linear velocity(%lf,%lf,%lf) angular velocity(%lf,%lf,%lf)",
                 (double)msg.linear.x,(double)msg.linear.y,(double)msg.linear.z,
                 (double)msg.angular.x,(double)msg.angular.y,(double)msg.angular.z);
        turtle_circle_pub.publish(msg);
        ros::spinOnce();
        loop_rate.sleep();
    }
    return 0;
}

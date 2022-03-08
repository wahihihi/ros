#include "ros/ros.h"
#include "geometry_msgs/Twist.h"
#include "turtle_controller/TurtleControlSrv.h"
#include "sstream"

class TurtleControlCircle{

public:
    TurtleControlCircle(){
        srv_ = n_.advertiseService("/turtle_control_circle",&TurtleControlCircle::callbacke, this);
    }

    bool callbacke(turtle_controller::TurtleControlSrv::Request &req,
                   turtle_controller::TurtleControlSrv::Response &res){
        geometry_msgs::Twist msg;
        if (req.state == "start"){
            msg.linear.x = 1.0;msg.linear.y = 0.0;msg.linear.z = 0.0;
            msg.angular.x = 0.0;msg.angular.y = 0.0;msg.angular.z = 1.0;
        }else if(req.state == "stop"){
            msg.linear.x = 0.0;msg.linear.y = 0.0;msg.linear.z = 0.0;
            msg.angular.x = 0.0;msg.angular.y = 0.0;msg.angular.z = 0.0;
        }else if(req.state == "adjust"){
            msg.linear.x = req.c_velocity;msg.linear.y = 0.0;msg.linear.z = 0.0;
            msg.angular.x = 0.0;msg.angular.y = 0.0;msg.angular.z = req.c_velocity;
        }
        pub_ = n_.advertise<geometry_msgs::Twist>("/"+req.name+"/cmd_vel",10);
        ros::Rate loop_rate(10);
        while (ros::ok()){
            pub_.publish(msg);
            ros::spinOnce();
            loop_rate.sleep();
        }
        return true;
    }

private:
    ros::NodeHandle n_;
    ros::ServiceServer srv_;
    ros::Publisher pub_;
    ros::Subscriber sub_;
};

int main(int argc,char** argv){
    ros::init(argc,argv,"turtle_control_circle");
    TurtleControlCircle TCCObject;
    ros::spin();
    return 0;
}

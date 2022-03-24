#include "ros/ros.h"
#include "geometry_msgs/Twist.h"
#include "turtle_controller/TurtleControlSrv.h"
#include "sstream"

class TurtleControlCircle{

public:
    TurtleControlCircle(){
        srv_ = n_.advertiseService("/turtle_control_circle",&TurtleControlCircle::callbacke, this);
    	ROS_INFO("TurtleControlCircle funcation has been launched.");
    }

    bool callbacke(turtle_controller::TurtleControlSrv::Request &req,
                   turtle_controller::TurtleControlSrv::Response &res){
        geometry_msgs::Twist msg;
        
    	ROS_INFO("callbacke funcation has been launched: name=%s ,status=%s",req.name.c_str(),req.state.c_str());
        if (req.state == "start"){
            msg.linear.x = 1.0;msg.linear.y = 0.0;msg.linear.z = 0.0;
            msg.angular.x = 0.0;msg.angular.y = 0.0;msg.angular.z = 1.0;
        }else if(req.state == "stop"){
            msg.linear.x = 0.0;msg.linear.y = 0.0;msg.linear.z = 0.0;
            msg.angular.x = 0.0;msg.angular.y = 0.0;msg.angular.z = 0.0;
        }else if(req.state == "adjust"){
            ROS_INFO("req.state IS  /%s/cmd_vel",req.state.c_str());
            ROS_INFO("req.c_velocity IS  %lf",req.c_velocity);
            msg.linear.x = req.c_velocity;msg.linear.y = 0.0;msg.linear.z = 0.0;
            msg.angular.x = 0.0;msg.angular.y = 0.0;msg.angular.z = req.c_velocity;
        }
        ROS_INFO("PUBLISHER IS  /%s/cmd_vel",req.name.c_str());
        pub_ = n_.advertise<geometry_msgs::Twist>("/"+req.name+"/cmd_vel",10);
        ros::Rate loop_rate(10);
        while (ros::ok()){
            pub_.publish(msg);
            ROS_INFO("PUBLISHER SUCCESS");
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

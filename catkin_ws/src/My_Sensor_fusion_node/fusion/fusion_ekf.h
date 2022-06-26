//
// Created by swh on 22-6-26.
//

#ifndef MY_SENSOR_FUSION_NODE_FUSION_EKF_H
#define MY_SENSOR_FUSION_NODE_FUSION_EKF_H

#include <Eigen/Dense>
#include <vector>
#include <string>
#include <fstream>

namespace kit {
namespace perception {
namespace fusion {

class FusionEKF {

private:
    Eigen::MatrixXd CalculateJacbian(const Eigen::VectorXd& x_state);

    Eigen::MatrixXd R_laser_;    // laser measurement noise
    Eigen::MatrixXd R_radar_;    // radar measurement noise
    Eigen::MatrixXd R_camera_;   // camera measurement noise
    Eigen::MatrixXd H_laser_;    // measurement function for laser
    Eigen::MatrixXd H_camera_;   // measurement function for camera
    Eigen::MatrixXd H_radar_jacobian_;         // measurement function for radar
    Eigen::MatrixXd F_motion_;                 // state transition matrix for lidar and radar
    Eigen::MatrixXd F_camera_;                 // state transition matrix for camera
    Eigen::MatrixXd P_;                        // state covariance matrix for all

    float noise_ax;
    float noise_ay;
    float noise_attr_;
};

}
}
}

#endif //MY_SENSOR_FUSION_NODE_FUSION_EKF_H

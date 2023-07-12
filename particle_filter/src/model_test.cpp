/*
 * model_fitting_demo.cpp
 *
 *  Created on: Jun 8, 2010
 *      Author: sturm
 */

#include <ros/ros.h>
//#include "articulation_models/models/factory.h"

#include "articulation_model_msgs/ModelMsg.h"
#include "articulation_model_msgs/TrackMsg.h"
#include "articulation_model_msgs/ParamMsg.h"
#include "particle_filter/articulation_model.h"
#include "particle_filter/rotational_model.h"
#include "particle_filter/prismatic_model.h"
#include "particle_filter/rigid_model.h"
#include "unity_robotics_demo_msgs/PosRot.h"

#include <boost/random.hpp>
#include <boost/random/normal_distribution.hpp>
#include <algorithm>
#include <iostream>
#include <list>
#include <iterator>
#include <tf/transform_datatypes.h>


using namespace std;

articulation_model_msgs::TrackMsg generateMeasurement(const std::vector<geometry_msgs::Pose>& all_poses, const int& begin_idx, const int& end_idx)
{
  articulation_model_msgs::TrackMsg track;

  track.header.stamp = ros::Time::now();
  track.header.frame_id = "/world";
  track.header.seq = 0;


  if (begin_idx > end_idx)
  {
    std::cerr << "begin_idx is bigger than end_idx!" << std::endl;
    return track;
  }

  std::vector<geometry_msgs::Pose>::const_iterator first = all_poses.begin() + begin_idx;
  std::vector<geometry_msgs::Pose>::const_iterator last = all_poses.begin() + end_idx;

  if ((first >= all_poses.end()) || (last >= all_poses.end()))
  {
    std::cerr << "begin_idx or end_idx are bigger than the vector" << std::endl;
    return track;
  }

  std::vector<geometry_msgs::Pose> measurement_vector(first, last);
  track.pose = measurement_vector;
  return track;
}


struct {
  int numb_msgs = 0;
  
  int qrCount = 0;
  int qrTotal = 1; //Total number of QR codes
  //The folowwing three variables work only for two Qr codes
  std::vector <geometry_msgs::Pose> generated_poses;



  geometry_msgs::Pose poseG;
  //std::vector <unity_robotics_demo_msgs::PosRot> generated_poses;
  articulation_model_msgs::ModelMsg model_msg;
  articulation_model_msgs::ParamMsg sigma_param;
  articulation_model_msgs::ParamMsg sigma_orientation;
  const int initial_datapoints_number = 12 *qrTotal;
  const int first_guess = 3;
  std::list<string> ID;
  std::list<string> ids; //list of all IDs that we receive
  bool start = true;
  float maxLikelihood = -1000000000.;
  //Eigen::Vector3d vect{0., 0., 1.};
  //Eigen::Vector3d resVect;
  tf::Vector3 vect{0., 0., 1.};
  tf::Vector3 resVect;
  
} manager;

//Declare memeber variables
ArticulationModelPtr rotational_instance(new RotationalModel);
ArticulationModelPtr prismatic_instance(new PrismaticModel);
ArticulationModelPtr rigid_instance(new RigidModel);
ros::Publisher model_pub;
std::vector <float> avg_vect_x;
std::vector <float> avg_vect_y;
std::vector <float> avg_vect_z;
tf::Quaternion quat;

void print(std::list<std::string> const &list)
{
    std::copy(list.begin(),
            list.end(),
            std::ostream_iterator<std::string>(std::cout, "\n"));
}

template<typename C, typename T>
bool contains(C&& c, T e) { 
    return std::find(std::begin(c), std::end(c), e) != std::end(c);
};


double compute_average(std::vector<float> &vi) {
     double sum = 0;

     // iterate over all elements
     
     for (int p:vi){

        sum = sum + p;
     }

     return (sum/vi.size());
    }

void deleteArray(std::vector<float> &myvector){
    for (auto i = myvector.begin(); i < myvector.end();
         ++i) {
        myvector.erase(i);
    }
}

double std_deviation(std::vector<float> &vect){
  float sum = 0.0, mean, variance = 0.0, stdDeviation;
   int i;
   for(i = 0; i < vect.size(); ++i){
    sum += vect[i];
    
   }
   mean = sum/vect.size();

   for(i = 0; i < vect.size(); ++i){
    variance += pow(vect[i] - mean, 2);
    
   }
   variance = variance/vect.size();
   stdDeviation = sqrt(variance);
   return stdDeviation;

}




//TO-DO: change the name of the parameters of pose to match the ones from geometry_msg pose
void poseCallback(unity_robotics_demo_msgs::PosRot pose){

  std::cout << "receiving message" << std::endl;

  //if (manager.numb_msgs < manager.initial_datapoints_number + 1){
  manager.poseG.position.x = pose.pos_x;
  manager.poseG.position.y = pose.pos_y;
  manager.poseG.position.z = pose.pos_z;
  manager.poseG.orientation.x = pose.rot_x;
  manager.poseG.orientation.y = pose.rot_y;
  manager.poseG.orientation.z = pose.rot_z;
  manager.poseG.orientation.w = pose.rot_w;

  manager.generated_poses.push_back(manager.poseG);
  manager.numb_msgs +=1;

  manager.ids.push_back(pose.id);

  //Check if the ID already exists in the list
  
  if (!contains(manager.ID, pose.id)){
    manager.ID.push_back(pose.id);
    manager.qrCount += 1;
  }
  //}

  std::cout << "Numb. of messages = " << manager.numb_msgs << std::endl;
  std::cout << "ID = " << pose.id << std::endl;
  //Count when we have at least two of the same

  //Create the dataset
  if (manager.numb_msgs >= (manager.initial_datapoints_number)){
    
    if (manager.start){
      manager.sigma_param.name = "sigma_position";
      manager.sigma_param.value = 0.005;
      manager.sigma_param.type = articulation_model_msgs::ParamMsg::PRIOR;

      manager.sigma_orientation.name = "sigma_orientation";
      manager.sigma_orientation.value = 0.005;
      manager.sigma_orientation.type = articulation_model_msgs::ParamMsg::PRIOR;
      
      
      manager.model_msg.params.push_back(manager.sigma_param);
      manager.model_msg.params.push_back(manager.sigma_orientation);

      manager.model_msg.track = generateMeasurement(manager.generated_poses, 0, manager.first_guess);

      std::cout << "creating object callBack" << std::endl;


      manager.model_msg.name = "rotational";
      rotational_instance->setModel(manager.model_msg);
      manager.model_msg.name = "prismatic";
      prismatic_instance->setModel(manager.model_msg);
      manager.model_msg.name = "rigid";
      rigid_instance->setModel(manager.model_msg);

      manager.start = false;
    }


    double pos_x;
    double pos_y;
    double pos_z;

    double rot_x;
    double rot_y;
    double rot_z;
    double rot_w;

    double best_rot_x;
    double best_rot_y;
    double best_rot_z;
    double best_rot_w;

    double radius;

    std::vector <float> pos_x_vec;
    std::vector <float> pos_y_vec;
    std::vector <float> pos_z_vec;


    int generate_measurement_every_so_many = 3;

    for (int loop_count = 0; loop_count < end(manager.generated_poses)-begin(manager.generated_poses) -(manager.first_guess + generate_measurement_every_so_many); loop_count++){
      
      // ------------------------ generate measurement -------------------------------
      if (loop_count % generate_measurement_every_so_many == 0)
      {
        articulation_model_msgs::TrackMsg z;
        z = generateMeasurement(manager.generated_poses, loop_count + manager.first_guess - generate_measurement_every_so_many, loop_count + manager.first_guess + generate_measurement_every_so_many);
        rotational_instance->addTrack(z);
        prismatic_instance->addTrack(z);
        rigid_instance->addTrack(z);
        std::cout << "measurement taken" << std::endl;
      }

      std::cout << "evaluating" << std::endl;
      rotational_instance->fitModel();
      prismatic_instance->fitModel();
      rigid_instance->fitModel();


      rotational_instance->evaluateModel();
      prismatic_instance->evaluateModel();
      rigid_instance->evaluateModel();

      std::cout << "done callBack" << std::endl;

      double rotational_loglikelihood = rotational_instance->getParam("loglikelihood");
      double prismatic_loglikelihood = prismatic_instance->getParam("loglikelihood");
      double rigid_loglikelihood = rigid_instance->getParam("loglikelihood");

      
      
      std::cout << "     rotational log LH = " << rotational_loglikelihood<< "\n " << std::endl;
      std::cout << "     prismatic log LH = " << prismatic_loglikelihood<< "\n "  << std::endl;
      std::cout << "     rigid log LH = " << rigid_loglikelihood << "\n \n" << std::endl;

      double max_loglikehood = std::max(std::max(rotational_loglikelihood, prismatic_loglikelihood), rigid_loglikelihood);
      rotational_loglikelihood = rotational_loglikelihood - max_loglikehood;
      prismatic_loglikelihood = prismatic_loglikelihood - max_loglikehood;
      rigid_loglikelihood = rigid_loglikelihood - max_loglikehood;

      double rotational_likelihood = exp(rotational_loglikelihood);
      double prismatic_likelihood = exp(prismatic_loglikelihood);
      double rigid_likelihood = exp(rigid_loglikelihood);

      //Save the maximum likelihood
      if (rotational_likelihood > manager.maxLikelihood){
        best_rot_x = rotational_instance->getParam("rot_axis.x");
        best_rot_y = rotational_instance->getParam("rot_axis.y");
        best_rot_z = rotational_instance->getParam("rot_axis.z");
        best_rot_w = rotational_instance->getParam("rot_axis.w");

        manager.maxLikelihood = rotational_likelihood;

      }

      rotational_instance->setParam("weight",rotational_likelihood,articulation_model_msgs::ParamMsg::EVAL);
      prismatic_instance->setParam("weight",prismatic_likelihood,articulation_model_msgs::ParamMsg::EVAL);
      rigid_instance->setParam("weight",rigid_likelihood,articulation_model_msgs::ParamMsg::EVAL);

      double sum_likelihoods = rotational_likelihood + prismatic_likelihood + rigid_likelihood;

      rotational_likelihood = rotational_likelihood/sum_likelihoods;
      prismatic_likelihood = prismatic_likelihood/sum_likelihoods;
      rigid_likelihood = rigid_likelihood/sum_likelihoods;

      // std::cout << "     rotational normalized likelihood = " << rotational_likelihood<< "\n " << std::endl;
      // std::cout << "     prismatic normalized likelihood = " << prismatic_likelihood<< "\n "  << std::endl;
      // std::cout << "     rigid normalized likelihood = " << rigid_likelihood << "\n \n" << std::endl;

      std::string model_name;
      

      radius = rotational_instance->getParam("rot_radius");

      pos_x = rotational_instance->getParam("rot_center.x");
      pos_y = rotational_instance->getParam("rot_center.y");
      pos_z = rotational_instance->getParam("rot_center.z");

      rot_x = rotational_instance->getParam("rot_axis.x");
      rot_y = rotational_instance->getParam("rot_axis.y");
      rot_z = rotational_instance->getParam("rot_axis.z");
      rot_w = rotational_instance->getParam("rot_axis.w");


      if (rotational_likelihood > 0.5){
        std::cout << "      Pos x = "<< pos_x << "\n \n" << std::endl;
        pos_x_vec.push_back(pos_x);
        pos_y_vec.push_back(pos_y);
        pos_z_vec.push_back(pos_z);
      }
      

      model_name = "rotational";

      std::cout << "     "<< model_name << " Radius = "<< radius << "\n \n" << std::endl;
      std::cout << "     "<< model_name << " pos x = "<< pos_x << "\n \n" << std::endl;
      std::cout << "     "<< model_name << " pos y = "<< pos_y << "\n \n" << std::endl;
      std::cout << "     "<< model_name << " pos z = "<< pos_z << "\n \n" << std::endl;

      std::cout << "     "<< model_name << " rot x = "<< rot_x << "\n \n" << std::endl;
      std::cout << "     "<< model_name << " rot y = "<< rot_y << "\n \n" << std::endl;
      std::cout << "     "<< model_name << " rot z = "<< rot_z << "\n \n" << std::endl;
      std::cout << "     "<< model_name << " rot w = "<< rot_w << "\n \n" << std::endl;

    }
    
    std::cout << "--------------------------"<< "\n \n" << std::endl;

    float count = 0.;
    float count_2 = 0.;
    float count_3 = 0.;
    int i;

    std:: vector <float> diff1;

    std::cout << "Size = " << pos_x_vec.size() << std::endl;
    std::cout << "Vector x = " << std::endl;

    double devstd_x = std_deviation(pos_x_vec);
    for (i=0;i < (pos_x_vec.size());i++) {
        printf("%lf\n",pos_x_vec[i]);
        
        count += pos_x_vec[i];
        count_2 += pos_y_vec[i];
        count_3 += pos_z_vec[i];
        //if (i > 0){
        //  diff[i -1] = pos_x_vec[i] - pos_x_vec[i-1];
        //}
        // if the difference is really big then we don't take it into account
     }

    std::cout << "    " << std::endl;
    std::cout << "Vector y = " << std::endl;
     for (i=0;i < (pos_y_vec.size());i++) {
        printf("%lf\n",pos_y_vec[i]);

        //if (i > 0){
        //  diff[i -1] = pos_x_vec[i] - pos_x_vec[i-1];
        //}
        // if the difference is really big then we don't take it into account
     }
     std::cout << "    " << std::endl;
     std::cout << "Vector z = " << std::endl;
     for (i=0;i < (pos_z_vec.size());i++) {

        printf("%lf\n",pos_z_vec[i]);

        //if (i > 0){
        //  diff[i -1] = pos_x_vec[i] - pos_x_vec[i-1];
        //}
        // if the difference is really big then we don't take it into account
     }
    std::cout << "Standard dev x = "<< devstd_x<< std::endl;

    std::cout << "Standard dev y = "<<std_deviation(pos_y_vec) << std::endl;

    std::cout << "     "<< "Average pos x = " << count / i << "\n \n" << std::endl;
    std::cout << "     "<< "Average pos y = " << count_2 / i << "\n \n" << std::endl;
    std::cout << "     "<< "Average pos z = " << count_3 / i << "\n \n" << std::endl;

    std::cout << "     "<< "Best rot x = " << best_rot_x << "\n \n" << std::endl;
    std::cout << "     "<< "Best rot y = " << best_rot_y << "\n \n" << std::endl;
    std::cout << "     "<< "Best rot z = " << best_rot_z << "\n \n" << std::endl;

    std::cout << "     "<< "Best rot w = " << best_rot_w << "\n \n" << std::endl;

    deleteArray(pos_x_vec);
    deleteArray(pos_y_vec);
    deleteArray(pos_z_vec);
    
    //append the vectors
    avg_vect_x.push_back(count / i);
    avg_vect_y.push_back(count_2 / i);
    avg_vect_z.push_back(count_3 / i);

    std::cout << "     "<< "Size of avg vector x = " << avg_vect_x.size() << "\n \n" << std::endl;

    if (avg_vect_x.size() > 4){
      std::cout << "Average pos x vector = "<< std::endl;
      for (int j=0;j < (avg_vect_x.size());j++) {

        printf("%lf\n", avg_vect_x[j]);

        //if (i > 0){
        //  diff[i -1] = pos_x_vec[i] - pos_x_vec[i-1];
        //}
        // if the difference is really big then we don't take it into account
     }
    }

    //rotate the z vector based on the best quaternion found

    quat.setX(best_rot_x);
    quat.setY(best_rot_y);
    quat.setZ(best_rot_z);
    quat.setW(best_rot_w);


    //rotate_vector_by_quaternion(manager.vect, manager.quat, manager.resVect);

    manager.resVect = quatRotate(quat,  manager.vect);
    
    unity_robotics_demo_msgs::PosRot poseResult;
    poseResult.pos_x = count / i;
    poseResult.pos_y = count_2 / i;
    poseResult.pos_z = count_3 / i;

    //rot_x, rot_y and rot_z does not corespond to the rotation quaternion, but to a directional vector

    //poseResult.rot_x = rot_x;
    //poseResult.rot_y = rot_y;
    //poseResult.rot_z = rot_z;
    poseResult.rot_x = manager.resVect[0];
    poseResult.rot_y = manager.resVect[1];
    poseResult.rot_z = manager.resVect[2];
    poseResult.rot_w = rot_w;


    model_pub.publish(poseResult);

    manager.numb_msgs = 0;
    manager.ids = {};
    manager.generated_poses = {};
    // restart the quaternion
  }

}


int main(int argc, char** argv)
{
  ros::init(argc, argv, "model_fitting");
  ros::NodeHandle n;
  ros::NodeHandle r;
  ros::Rate loop_rate(200);

  boost::normal_distribution<> nd(0.0, 0.005);
  boost::mt19937 rng;
  boost::variate_generator<boost::mt19937&, boost::normal_distribution<> >
                  var_nor(rng, nd);

  //ros::Publisher model_pub = n.advertise<articulation_model_msgs::ModelMsg> ("model_track", 5);

 
  //model_pub = r.advertise<articulation_model_msgs::ModelMsg> ("model_track", 5);

  model_pub = r.advertise<unity_robotics_demo_msgs::PosRot> ("pose_model_fit", 5);
  ros::Subscriber sub = n.subscribe("pos_rot", 100, poseCallback);

  std::cout << "subscriber = " << sub <<std::endl;
  
  ros::spin();

}

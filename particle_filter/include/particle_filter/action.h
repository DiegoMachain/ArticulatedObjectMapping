#ifndef ACTION_H
#define ACTION_H
#include <tf/tf.h>
#include <tf/transform_listener.h>
#include <moveit/move_group_interface/move_group_interface.h>
#include <moveit/planning_scene_interface/planning_scene_interface.h>
#include "std_msgs/Bool.h"


class Action;
typedef boost::shared_ptr<Action> ActionPtr;


class Action
{
public:
  Action();
  virtual ~Action();

  void effortCB(const std_msgs::BoolConstPtr& msg);
  bool execute(tf::Vector3 &direction, const std::string &marker_tf, const bool &both_ways = true);
  void plan(tf::Vector3 &direction, geometry_msgs::Pose &action_origin, const bool &both_ways = true);
  int getActionResult();
  void setActionDirection (const tf::Vector3& direction);

  tf::StampedTransform marker2odom;
  tf::TransformListener tf_listener;
  double distance;
  bool stopped;
  uint stopped_counter;
  tf::Vector3 action_direction;
  ros::Publisher vector_pub;
  ros::Subscriber effort_exceeded_sub;

  ros::NodeHandle nh;
  moveit::planning_interface::MoveGroup group;
  ros::AsyncSpinner spinner;


};


#endif //ACTION_H

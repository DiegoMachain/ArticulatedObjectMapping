// Generated by gencpp from file robotics_demo/ObjectPoseService.msg
// DO NOT EDIT!


#ifndef ROBOTICS_DEMO_MESSAGE_OBJECTPOSESERVICE_H
#define ROBOTICS_DEMO_MESSAGE_OBJECTPOSESERVICE_H

#include <ros/service_traits.h>


#include <robotics_demo/ObjectPoseServiceRequest.h>
#include <robotics_demo/ObjectPoseServiceResponse.h>


namespace robotics_demo
{

struct ObjectPoseService
{

typedef ObjectPoseServiceRequest Request;
typedef ObjectPoseServiceResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct ObjectPoseService
} // namespace robotics_demo


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::robotics_demo::ObjectPoseService > {
  static const char* value()
  {
    return "31d8db4c34c65d79af3330e45c30d801";
  }

  static const char* value(const ::robotics_demo::ObjectPoseService&) { return value(); }
};

template<>
struct DataType< ::robotics_demo::ObjectPoseService > {
  static const char* value()
  {
    return "robotics_demo/ObjectPoseService";
  }

  static const char* value(const ::robotics_demo::ObjectPoseService&) { return value(); }
};


// service_traits::MD5Sum< ::robotics_demo::ObjectPoseServiceRequest> should match
// service_traits::MD5Sum< ::robotics_demo::ObjectPoseService >
template<>
struct MD5Sum< ::robotics_demo::ObjectPoseServiceRequest>
{
  static const char* value()
  {
    return MD5Sum< ::robotics_demo::ObjectPoseService >::value();
  }
  static const char* value(const ::robotics_demo::ObjectPoseServiceRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::robotics_demo::ObjectPoseServiceRequest> should match
// service_traits::DataType< ::robotics_demo::ObjectPoseService >
template<>
struct DataType< ::robotics_demo::ObjectPoseServiceRequest>
{
  static const char* value()
  {
    return DataType< ::robotics_demo::ObjectPoseService >::value();
  }
  static const char* value(const ::robotics_demo::ObjectPoseServiceRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::robotics_demo::ObjectPoseServiceResponse> should match
// service_traits::MD5Sum< ::robotics_demo::ObjectPoseService >
template<>
struct MD5Sum< ::robotics_demo::ObjectPoseServiceResponse>
{
  static const char* value()
  {
    return MD5Sum< ::robotics_demo::ObjectPoseService >::value();
  }
  static const char* value(const ::robotics_demo::ObjectPoseServiceResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::robotics_demo::ObjectPoseServiceResponse> should match
// service_traits::DataType< ::robotics_demo::ObjectPoseService >
template<>
struct DataType< ::robotics_demo::ObjectPoseServiceResponse>
{
  static const char* value()
  {
    return DataType< ::robotics_demo::ObjectPoseService >::value();
  }
  static const char* value(const ::robotics_demo::ObjectPoseServiceResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROBOTICS_DEMO_MESSAGE_OBJECTPOSESERVICE_H
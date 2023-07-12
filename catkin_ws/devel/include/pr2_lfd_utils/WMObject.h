// Generated by gencpp from file pr2_lfd_utils/WMObject.msg
// DO NOT EDIT!


#ifndef PR2_LFD_UTILS_MESSAGE_WMOBJECT_H
#define PR2_LFD_UTILS_MESSAGE_WMOBJECT_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <geometry_msgs/PoseStamped.h>

namespace pr2_lfd_utils
{
template <class ContainerAllocator>
struct WMObject_
{
  typedef WMObject_<ContainerAllocator> Type;

  WMObject_()
    : header()
    , id(0)
    , currently_visible(false)
    , pose()  {
    }
  WMObject_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , id(0)
    , currently_visible(false)
    , pose(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint32_t _id_type;
  _id_type id;

   typedef uint8_t _currently_visible_type;
  _currently_visible_type currently_visible;

   typedef  ::geometry_msgs::PoseStamped_<ContainerAllocator>  _pose_type;
  _pose_type pose;





  typedef boost::shared_ptr< ::pr2_lfd_utils::WMObject_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pr2_lfd_utils::WMObject_<ContainerAllocator> const> ConstPtr;

}; // struct WMObject_

typedef ::pr2_lfd_utils::WMObject_<std::allocator<void> > WMObject;

typedef boost::shared_ptr< ::pr2_lfd_utils::WMObject > WMObjectPtr;
typedef boost::shared_ptr< ::pr2_lfd_utils::WMObject const> WMObjectConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pr2_lfd_utils::WMObject_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pr2_lfd_utils::WMObject_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::pr2_lfd_utils::WMObject_<ContainerAllocator1> & lhs, const ::pr2_lfd_utils::WMObject_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.id == rhs.id &&
    lhs.currently_visible == rhs.currently_visible &&
    lhs.pose == rhs.pose;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::pr2_lfd_utils::WMObject_<ContainerAllocator1> & lhs, const ::pr2_lfd_utils::WMObject_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace pr2_lfd_utils

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::pr2_lfd_utils::WMObject_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pr2_lfd_utils::WMObject_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pr2_lfd_utils::WMObject_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pr2_lfd_utils::WMObject_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pr2_lfd_utils::WMObject_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pr2_lfd_utils::WMObject_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pr2_lfd_utils::WMObject_<ContainerAllocator> >
{
  static const char* value()
  {
    return "32c98177cb26741b99f0e28637640d56";
  }

  static const char* value(const ::pr2_lfd_utils::WMObject_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x32c98177cb26741bULL;
  static const uint64_t static_value2 = 0x99f0e28637640d56ULL;
};

template<class ContainerAllocator>
struct DataType< ::pr2_lfd_utils::WMObject_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pr2_lfd_utils/WMObject";
  }

  static const char* value(const ::pr2_lfd_utils::WMObject_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pr2_lfd_utils::WMObject_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"uint32 id\n"
"bool currently_visible\n"
"geometry_msgs/PoseStamped pose\n"
"\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/PoseStamped\n"
"# A Pose with reference coordinate frame and timestamp\n"
"Header header\n"
"Pose pose\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
;
  }

  static const char* value(const ::pr2_lfd_utils::WMObject_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pr2_lfd_utils::WMObject_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.id);
      stream.next(m.currently_visible);
      stream.next(m.pose);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct WMObject_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pr2_lfd_utils::WMObject_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pr2_lfd_utils::WMObject_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "id: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.id);
    s << indent << "currently_visible: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.currently_visible);
    s << indent << "pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::PoseStamped_<ContainerAllocator> >::stream(s, indent + "  ", v.pose);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PR2_LFD_UTILS_MESSAGE_WMOBJECT_H
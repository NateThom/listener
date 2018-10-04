// Generated by gencpp from file gnss_driver/Gnss.msg
// DO NOT EDIT!


#ifndef GNSS_DRIVER_MESSAGE_GNSS_H
#define GNSS_DRIVER_MESSAGE_GNSS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <gnss_driver/PointLLH.h>
#include <gnss_driver/Point3D.h>
#include <gnss_driver/Point3D.h>
#include <gnss_driver/Point3D.h>

namespace gnss_driver
{
template <class ContainerAllocator>
struct Gnss_
{
  typedef Gnss_<ContainerAllocator> Type;

  Gnss_()
    : header()
    , measurement_time(0.0)
    , velocity_latency(0.0)
    , position()
    , position_std_dev()
    , linear_velocity()
    , linear_velocity_std_dev()
    , num_sats(0)
    , type(0)
    , solution_status(0)
    , position_type(0)  {
    }
  Gnss_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , measurement_time(0.0)
    , velocity_latency(0.0)
    , position(_alloc)
    , position_std_dev(_alloc)
    , linear_velocity(_alloc)
    , linear_velocity_std_dev(_alloc)
    , num_sats(0)
    , type(0)
    , solution_status(0)
    , position_type(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef double _measurement_time_type;
  _measurement_time_type measurement_time;

   typedef float _velocity_latency_type;
  _velocity_latency_type velocity_latency;

   typedef  ::gnss_driver::PointLLH_<ContainerAllocator>  _position_type;
  _position_type position;

   typedef  ::gnss_driver::Point3D_<ContainerAllocator>  _position_std_dev_type;
  _position_std_dev_type position_std_dev;

   typedef  ::gnss_driver::Point3D_<ContainerAllocator>  _linear_velocity_type;
  _linear_velocity_type linear_velocity;

   typedef  ::gnss_driver::Point3D_<ContainerAllocator>  _linear_velocity_std_dev_type;
  _linear_velocity_std_dev_type linear_velocity_std_dev;

   typedef int32_t _num_sats_type;
  _num_sats_type num_sats;

   typedef int32_t _type_type;
  _type_type type;

   typedef uint32_t _solution_status_type;
  _solution_status_type solution_status;

   typedef uint32_t _position_type_type;
  _position_type_type position_type;



  enum {
    INVALID = 0,
    PROPAGATED = 1,
    SINGLE = 2,
    PSRDIFF = 3,
    PPP = 4,
    RTK_FLOAT = 5,
    RTK_INTEGER = 6,
  };


  typedef boost::shared_ptr< ::gnss_driver::Gnss_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::gnss_driver::Gnss_<ContainerAllocator> const> ConstPtr;

}; // struct Gnss_

typedef ::gnss_driver::Gnss_<std::allocator<void> > Gnss;

typedef boost::shared_ptr< ::gnss_driver::Gnss > GnssPtr;
typedef boost::shared_ptr< ::gnss_driver::Gnss const> GnssConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::gnss_driver::Gnss_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::gnss_driver::Gnss_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace gnss_driver

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'gnss_driver': ['/home/nthom/Documents/ros/rk_node_tutorial/src/gnss_driver/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::gnss_driver::Gnss_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gnss_driver::Gnss_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gnss_driver::Gnss_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gnss_driver::Gnss_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gnss_driver::Gnss_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gnss_driver::Gnss_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::gnss_driver::Gnss_<ContainerAllocator> >
{
  static const char* value()
  {
    return "de82954b18f7418bd62c4ba27cf8d96f";
  }

  static const char* value(const ::gnss_driver::Gnss_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xde82954b18f7418bULL;
  static const uint64_t static_value2 = 0xd62c4ba27cf8d96fULL;
};

template<class ContainerAllocator>
struct DataType< ::gnss_driver::Gnss_<ContainerAllocator> >
{
  static const char* value()
  {
    return "gnss_driver/Gnss";
  }

  static const char* value(const ::gnss_driver::Gnss_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::gnss_driver::Gnss_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
float64 measurement_time\n\
float32 velocity_latency\n\
PointLLH position\n\
Point3D position_std_dev\n\
Point3D linear_velocity\n\
Point3D linear_velocity_std_dev\n\
int32 num_sats\n\
\n\
int32 INVALID=0\n\
int32 PROPAGATED=1\n\
int32 SINGLE=2\n\
int32 PSRDIFF=3\n\
int32 PPP=4\n\
int32 RTK_FLOAT=5\n\
int32 RTK_INTEGER=6\n\
\n\
int32 type\n\
uint32 solution_status\n\
uint32 position_type\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: gnss_driver/PointLLH\n\
float64 lon\n\
float64 lat\n\
float64 height\n\
\n\
================================================================================\n\
MSG: gnss_driver/Point3D\n\
float64 x\n\
float64 y\n\
float64 z\n\
";
  }

  static const char* value(const ::gnss_driver::Gnss_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::gnss_driver::Gnss_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.measurement_time);
      stream.next(m.velocity_latency);
      stream.next(m.position);
      stream.next(m.position_std_dev);
      stream.next(m.linear_velocity);
      stream.next(m.linear_velocity_std_dev);
      stream.next(m.num_sats);
      stream.next(m.type);
      stream.next(m.solution_status);
      stream.next(m.position_type);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Gnss_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::gnss_driver::Gnss_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::gnss_driver::Gnss_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "measurement_time: ";
    Printer<double>::stream(s, indent + "  ", v.measurement_time);
    s << indent << "velocity_latency: ";
    Printer<float>::stream(s, indent + "  ", v.velocity_latency);
    s << indent << "position: ";
    s << std::endl;
    Printer< ::gnss_driver::PointLLH_<ContainerAllocator> >::stream(s, indent + "  ", v.position);
    s << indent << "position_std_dev: ";
    s << std::endl;
    Printer< ::gnss_driver::Point3D_<ContainerAllocator> >::stream(s, indent + "  ", v.position_std_dev);
    s << indent << "linear_velocity: ";
    s << std::endl;
    Printer< ::gnss_driver::Point3D_<ContainerAllocator> >::stream(s, indent + "  ", v.linear_velocity);
    s << indent << "linear_velocity_std_dev: ";
    s << std::endl;
    Printer< ::gnss_driver::Point3D_<ContainerAllocator> >::stream(s, indent + "  ", v.linear_velocity_std_dev);
    s << indent << "num_sats: ";
    Printer<int32_t>::stream(s, indent + "  ", v.num_sats);
    s << indent << "type: ";
    Printer<int32_t>::stream(s, indent + "  ", v.type);
    s << indent << "solution_status: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.solution_status);
    s << indent << "position_type: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.position_type);
  }
};

} // namespace message_operations
} // namespace ros

#endif // GNSS_DRIVER_MESSAGE_GNSS_H

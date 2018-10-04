// Generated by gencpp from file gnss_driver/GnssStatus.msg
// DO NOT EDIT!


#ifndef GNSS_DRIVER_MESSAGE_GNSSSTATUS_H
#define GNSS_DRIVER_MESSAGE_GNSSSTATUS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace gnss_driver
{
template <class ContainerAllocator>
struct GnssStatus_
{
  typedef GnssStatus_<ContainerAllocator> Type;

  GnssStatus_()
    : header()
    , solution_completed(false)
    , solution_status(0)
    , position_type(0)
    , num_sats(0)  {
    }
  GnssStatus_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , solution_completed(false)
    , solution_status(0)
    , position_type(0)
    , num_sats(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint8_t _solution_completed_type;
  _solution_completed_type solution_completed;

   typedef uint32_t _solution_status_type;
  _solution_status_type solution_status;

   typedef uint32_t _position_type_type;
  _position_type_type position_type;

   typedef int32_t _num_sats_type;
  _num_sats_type num_sats;





  typedef boost::shared_ptr< ::gnss_driver::GnssStatus_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::gnss_driver::GnssStatus_<ContainerAllocator> const> ConstPtr;

}; // struct GnssStatus_

typedef ::gnss_driver::GnssStatus_<std::allocator<void> > GnssStatus;

typedef boost::shared_ptr< ::gnss_driver::GnssStatus > GnssStatusPtr;
typedef boost::shared_ptr< ::gnss_driver::GnssStatus const> GnssStatusConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::gnss_driver::GnssStatus_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::gnss_driver::GnssStatus_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::gnss_driver::GnssStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gnss_driver::GnssStatus_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gnss_driver::GnssStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gnss_driver::GnssStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gnss_driver::GnssStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gnss_driver::GnssStatus_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::gnss_driver::GnssStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fcc70857aecd5140aa4f8b0640315349";
  }

  static const char* value(const ::gnss_driver::GnssStatus_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xfcc70857aecd5140ULL;
  static const uint64_t static_value2 = 0xaa4f8b0640315349ULL;
};

template<class ContainerAllocator>
struct DataType< ::gnss_driver::GnssStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "gnss_driver/GnssStatus";
  }

  static const char* value(const ::gnss_driver::GnssStatus_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::gnss_driver::GnssStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
bool solution_completed\n\
uint32 solution_status\n\
uint32 position_type\n\
int32 num_sats\n\
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
";
  }

  static const char* value(const ::gnss_driver::GnssStatus_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::gnss_driver::GnssStatus_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.solution_completed);
      stream.next(m.solution_status);
      stream.next(m.position_type);
      stream.next(m.num_sats);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GnssStatus_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::gnss_driver::GnssStatus_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::gnss_driver::GnssStatus_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "solution_completed: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.solution_completed);
    s << indent << "solution_status: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.solution_status);
    s << indent << "position_type: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.position_type);
    s << indent << "num_sats: ";
    Printer<int32_t>::stream(s, indent + "  ", v.num_sats);
  }
};

} // namespace message_operations
} // namespace ros

#endif // GNSS_DRIVER_MESSAGE_GNSSSTATUS_H

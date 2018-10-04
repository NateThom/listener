// Generated by gencpp from file gnss_driver/PointENU.msg
// DO NOT EDIT!


#ifndef GNSS_DRIVER_MESSAGE_POINTENU_H
#define GNSS_DRIVER_MESSAGE_POINTENU_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace gnss_driver
{
template <class ContainerAllocator>
struct PointENU_
{
  typedef PointENU_<ContainerAllocator> Type;

  PointENU_()
    : x(0.0)
    , y(0.0)
    , z(0.0)  {
    }
  PointENU_(const ContainerAllocator& _alloc)
    : x(0.0)
    , y(0.0)
    , z(0.0)  {
  (void)_alloc;
    }



   typedef double _x_type;
  _x_type x;

   typedef double _y_type;
  _y_type y;

   typedef double _z_type;
  _z_type z;





  typedef boost::shared_ptr< ::gnss_driver::PointENU_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::gnss_driver::PointENU_<ContainerAllocator> const> ConstPtr;

}; // struct PointENU_

typedef ::gnss_driver::PointENU_<std::allocator<void> > PointENU;

typedef boost::shared_ptr< ::gnss_driver::PointENU > PointENUPtr;
typedef boost::shared_ptr< ::gnss_driver::PointENU const> PointENUConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::gnss_driver::PointENU_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::gnss_driver::PointENU_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace gnss_driver

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'gnss_driver': ['/home/nthom/Documents/ros/rk_node_tutorial/src/gnss_driver/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::gnss_driver::PointENU_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gnss_driver::PointENU_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gnss_driver::PointENU_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gnss_driver::PointENU_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gnss_driver::PointENU_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gnss_driver::PointENU_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::gnss_driver::PointENU_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4a842b65f413084dc2b10fb484ea7f17";
  }

  static const char* value(const ::gnss_driver::PointENU_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4a842b65f413084dULL;
  static const uint64_t static_value2 = 0xc2b10fb484ea7f17ULL;
};

template<class ContainerAllocator>
struct DataType< ::gnss_driver::PointENU_<ContainerAllocator> >
{
  static const char* value()
  {
    return "gnss_driver/PointENU";
  }

  static const char* value(const ::gnss_driver::PointENU_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::gnss_driver::PointENU_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 x\n\
float64 y\n\
float64 z\n\
";
  }

  static const char* value(const ::gnss_driver::PointENU_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::gnss_driver::PointENU_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.z);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PointENU_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::gnss_driver::PointENU_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::gnss_driver::PointENU_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<double>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<double>::stream(s, indent + "  ", v.y);
    s << indent << "z: ";
    Printer<double>::stream(s, indent + "  ", v.z);
  }
};

} // namespace message_operations
} // namespace ros

#endif // GNSS_DRIVER_MESSAGE_POINTENU_H

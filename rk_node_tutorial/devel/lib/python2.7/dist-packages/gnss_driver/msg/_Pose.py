# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from gnss_driver/Pose.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import gnss_driver.msg

class Pose(genpy.Message):
  _md5sum = "f88501e9ff1cc28ee87abe3d800d0709"
  _type = "gnss_driver/Pose"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """PointENU position
Quaternion orientation
Point3D linear_velocity
Point3D linear_acceleration
Point3D angular_velocity

float64 heading
Point3D linear_acceleration_vrf
Point3D angular_velocity_vrf

================================================================================
MSG: gnss_driver/PointENU
float64 x
float64 y
float64 z

================================================================================
MSG: gnss_driver/Quaternion
float64 qx
float64 qy
float64 qz
float64 qw

================================================================================
MSG: gnss_driver/Point3D
float64 x
float64 y
float64 z
"""
  __slots__ = ['position','orientation','linear_velocity','linear_acceleration','angular_velocity','heading','linear_acceleration_vrf','angular_velocity_vrf']
  _slot_types = ['gnss_driver/PointENU','gnss_driver/Quaternion','gnss_driver/Point3D','gnss_driver/Point3D','gnss_driver/Point3D','float64','gnss_driver/Point3D','gnss_driver/Point3D']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       position,orientation,linear_velocity,linear_acceleration,angular_velocity,heading,linear_acceleration_vrf,angular_velocity_vrf

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Pose, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.position is None:
        self.position = gnss_driver.msg.PointENU()
      if self.orientation is None:
        self.orientation = gnss_driver.msg.Quaternion()
      if self.linear_velocity is None:
        self.linear_velocity = gnss_driver.msg.Point3D()
      if self.linear_acceleration is None:
        self.linear_acceleration = gnss_driver.msg.Point3D()
      if self.angular_velocity is None:
        self.angular_velocity = gnss_driver.msg.Point3D()
      if self.heading is None:
        self.heading = 0.
      if self.linear_acceleration_vrf is None:
        self.linear_acceleration_vrf = gnss_driver.msg.Point3D()
      if self.angular_velocity_vrf is None:
        self.angular_velocity_vrf = gnss_driver.msg.Point3D()
    else:
      self.position = gnss_driver.msg.PointENU()
      self.orientation = gnss_driver.msg.Quaternion()
      self.linear_velocity = gnss_driver.msg.Point3D()
      self.linear_acceleration = gnss_driver.msg.Point3D()
      self.angular_velocity = gnss_driver.msg.Point3D()
      self.heading = 0.
      self.linear_acceleration_vrf = gnss_driver.msg.Point3D()
      self.angular_velocity_vrf = gnss_driver.msg.Point3D()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_23d().pack(_x.position.x, _x.position.y, _x.position.z, _x.orientation.qx, _x.orientation.qy, _x.orientation.qz, _x.orientation.qw, _x.linear_velocity.x, _x.linear_velocity.y, _x.linear_velocity.z, _x.linear_acceleration.x, _x.linear_acceleration.y, _x.linear_acceleration.z, _x.angular_velocity.x, _x.angular_velocity.y, _x.angular_velocity.z, _x.heading, _x.linear_acceleration_vrf.x, _x.linear_acceleration_vrf.y, _x.linear_acceleration_vrf.z, _x.angular_velocity_vrf.x, _x.angular_velocity_vrf.y, _x.angular_velocity_vrf.z))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.position is None:
        self.position = gnss_driver.msg.PointENU()
      if self.orientation is None:
        self.orientation = gnss_driver.msg.Quaternion()
      if self.linear_velocity is None:
        self.linear_velocity = gnss_driver.msg.Point3D()
      if self.linear_acceleration is None:
        self.linear_acceleration = gnss_driver.msg.Point3D()
      if self.angular_velocity is None:
        self.angular_velocity = gnss_driver.msg.Point3D()
      if self.linear_acceleration_vrf is None:
        self.linear_acceleration_vrf = gnss_driver.msg.Point3D()
      if self.angular_velocity_vrf is None:
        self.angular_velocity_vrf = gnss_driver.msg.Point3D()
      end = 0
      _x = self
      start = end
      end += 184
      (_x.position.x, _x.position.y, _x.position.z, _x.orientation.qx, _x.orientation.qy, _x.orientation.qz, _x.orientation.qw, _x.linear_velocity.x, _x.linear_velocity.y, _x.linear_velocity.z, _x.linear_acceleration.x, _x.linear_acceleration.y, _x.linear_acceleration.z, _x.angular_velocity.x, _x.angular_velocity.y, _x.angular_velocity.z, _x.heading, _x.linear_acceleration_vrf.x, _x.linear_acceleration_vrf.y, _x.linear_acceleration_vrf.z, _x.angular_velocity_vrf.x, _x.angular_velocity_vrf.y, _x.angular_velocity_vrf.z,) = _get_struct_23d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_23d().pack(_x.position.x, _x.position.y, _x.position.z, _x.orientation.qx, _x.orientation.qy, _x.orientation.qz, _x.orientation.qw, _x.linear_velocity.x, _x.linear_velocity.y, _x.linear_velocity.z, _x.linear_acceleration.x, _x.linear_acceleration.y, _x.linear_acceleration.z, _x.angular_velocity.x, _x.angular_velocity.y, _x.angular_velocity.z, _x.heading, _x.linear_acceleration_vrf.x, _x.linear_acceleration_vrf.y, _x.linear_acceleration_vrf.z, _x.angular_velocity_vrf.x, _x.angular_velocity_vrf.y, _x.angular_velocity_vrf.z))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.position is None:
        self.position = gnss_driver.msg.PointENU()
      if self.orientation is None:
        self.orientation = gnss_driver.msg.Quaternion()
      if self.linear_velocity is None:
        self.linear_velocity = gnss_driver.msg.Point3D()
      if self.linear_acceleration is None:
        self.linear_acceleration = gnss_driver.msg.Point3D()
      if self.angular_velocity is None:
        self.angular_velocity = gnss_driver.msg.Point3D()
      if self.linear_acceleration_vrf is None:
        self.linear_acceleration_vrf = gnss_driver.msg.Point3D()
      if self.angular_velocity_vrf is None:
        self.angular_velocity_vrf = gnss_driver.msg.Point3D()
      end = 0
      _x = self
      start = end
      end += 184
      (_x.position.x, _x.position.y, _x.position.z, _x.orientation.qx, _x.orientation.qy, _x.orientation.qz, _x.orientation.qw, _x.linear_velocity.x, _x.linear_velocity.y, _x.linear_velocity.z, _x.linear_acceleration.x, _x.linear_acceleration.y, _x.linear_acceleration.z, _x.angular_velocity.x, _x.angular_velocity.y, _x.angular_velocity.z, _x.heading, _x.linear_acceleration_vrf.x, _x.linear_acceleration_vrf.y, _x.linear_acceleration_vrf.z, _x.angular_velocity_vrf.x, _x.angular_velocity_vrf.y, _x.angular_velocity_vrf.z,) = _get_struct_23d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_23d = None
def _get_struct_23d():
    global _struct_23d
    if _struct_23d is None:
        _struct_23d = struct.Struct("<23d")
    return _struct_23d

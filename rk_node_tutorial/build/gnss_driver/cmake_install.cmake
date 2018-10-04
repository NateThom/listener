# Install script for directory: /home/nthom/Documents/ros/rk_node_tutorial/src/gnss_driver

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/nthom/Documents/ros/rk_node_tutorial/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnss_driver/msg" TYPE FILE FILES
    "/home/nthom/Documents/ros/rk_node_tutorial/src/gnss_driver/msg/Gnss.msg"
    "/home/nthom/Documents/ros/rk_node_tutorial/src/gnss_driver/msg/Gps.msg"
    "/home/nthom/Documents/ros/rk_node_tutorial/src/gnss_driver/msg/Point2D.msg"
    "/home/nthom/Documents/ros/rk_node_tutorial/src/gnss_driver/msg/Pose.msg"
    "/home/nthom/Documents/ros/rk_node_tutorial/src/gnss_driver/msg/GnssRange.msg"
    "/home/nthom/Documents/ros/rk_node_tutorial/src/gnss_driver/msg/Imu.msg"
    "/home/nthom/Documents/ros/rk_node_tutorial/src/gnss_driver/msg/Point3D.msg"
    "/home/nthom/Documents/ros/rk_node_tutorial/src/gnss_driver/msg/Quaternion.msg"
    "/home/nthom/Documents/ros/rk_node_tutorial/src/gnss_driver/msg/GnssStatus.msg"
    "/home/nthom/Documents/ros/rk_node_tutorial/src/gnss_driver/msg/Ins.msg"
    "/home/nthom/Documents/ros/rk_node_tutorial/src/gnss_driver/msg/PointENU.msg"
    "/home/nthom/Documents/ros/rk_node_tutorial/src/gnss_driver/msg/RangeInfo.msg"
    "/home/nthom/Documents/ros/rk_node_tutorial/src/gnss_driver/msg/GPGGA.msg"
    "/home/nthom/Documents/ros/rk_node_tutorial/src/gnss_driver/msg/InsStatus.msg"
    "/home/nthom/Documents/ros/rk_node_tutorial/src/gnss_driver/msg/PointLLH.msg"
    "/home/nthom/Documents/ros/rk_node_tutorial/src/gnss_driver/msg/StreamStatus.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnss_driver/cmake" TYPE FILE FILES "/home/nthom/Documents/ros/rk_node_tutorial/build/gnss_driver/catkin_generated/installspace/gnss_driver-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/nthom/Documents/ros/rk_node_tutorial/devel/include/gnss_driver")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/nthom/Documents/ros/rk_node_tutorial/devel/share/roseus/ros/gnss_driver")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/nthom/Documents/ros/rk_node_tutorial/devel/share/common-lisp/ros/gnss_driver")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/nthom/Documents/ros/rk_node_tutorial/devel/share/gennodejs/ros/gnss_driver")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/nthom/Documents/ros/rk_node_tutorial/devel/lib/python2.7/dist-packages/gnss_driver")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/nthom/Documents/ros/rk_node_tutorial/devel/lib/python2.7/dist-packages/gnss_driver")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/nthom/Documents/ros/rk_node_tutorial/build/gnss_driver/catkin_generated/installspace/gnss_driver.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnss_driver/cmake" TYPE FILE FILES "/home/nthom/Documents/ros/rk_node_tutorial/build/gnss_driver/catkin_generated/installspace/gnss_driver-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnss_driver/cmake" TYPE FILE FILES
    "/home/nthom/Documents/ros/rk_node_tutorial/build/gnss_driver/catkin_generated/installspace/gnss_driverConfig.cmake"
    "/home/nthom/Documents/ros/rk_node_tutorial/build/gnss_driver/catkin_generated/installspace/gnss_driverConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnss_driver" TYPE FILE FILES "/home/nthom/Documents/ros/rk_node_tutorial/src/gnss_driver/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libstream_nodelet.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libstream_nodelet.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libstream_nodelet.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/nthom/Documents/ros/rk_node_tutorial/devel/lib/libstream_nodelet.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libstream_nodelet.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libstream_nodelet.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libstream_nodelet.so"
         OLD_RPATH "/home/nthom/Documents/ros/rk_node_tutorial/src/gnss_driver/lib:/home/nthom/Documents/ros/rk_node_tutorial/devel/lib:/opt/ros/kinetic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libstream_nodelet.so")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libparser_nodelet.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libparser_nodelet.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libparser_nodelet.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/nthom/Documents/ros/rk_node_tutorial/devel/lib/libparser_nodelet.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libparser_nodelet.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libparser_nodelet.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libparser_nodelet.so"
         OLD_RPATH "/home/nthom/Documents/ros/rk_node_tutorial/src/gnss_driver/lib:/home/nthom/Documents/ros/rk_node_tutorial/devel/lib:/opt/ros/kinetic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libparser_nodelet.so")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libutils.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libutils.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libutils.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/nthom/Documents/ros/rk_node_tutorial/devel/lib/libutils.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libutils.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libutils.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libutils.so"
         OLD_RPATH "/home/nthom/Documents/ros/rk_node_tutorial/src/gnss_driver/lib:/opt/ros/kinetic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libutils.so")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/gnss_driver/test_monitor" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/gnss_driver/test_monitor")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/gnss_driver/test_monitor"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/gnss_driver" TYPE EXECUTABLE FILES "/home/nthom/Documents/ros/rk_node_tutorial/devel/lib/gnss_driver/test_monitor")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/gnss_driver/test_monitor" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/gnss_driver/test_monitor")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/gnss_driver/test_monitor"
         OLD_RPATH "/home/nthom/Documents/ros/rk_node_tutorial/src/gnss_driver/lib:/home/nthom/Documents/ros/rk_node_tutorial/devel/lib:/opt/ros/kinetic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/gnss_driver/test_monitor")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/gnss_driver/parser_cli" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/gnss_driver/parser_cli")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/gnss_driver/parser_cli"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/gnss_driver" TYPE EXECUTABLE FILES "/home/nthom/Documents/ros/rk_node_tutorial/devel/lib/gnss_driver/parser_cli")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/gnss_driver/parser_cli" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/gnss_driver/parser_cli")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/gnss_driver/parser_cli"
         OLD_RPATH "/home/nthom/Documents/ros/rk_node_tutorial/src/gnss_driver/lib:/home/nthom/Documents/ros/rk_node_tutorial/devel/lib:/opt/ros/kinetic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/gnss_driver/parser_cli")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnss_driver" TYPE FILE FILES "/home/nthom/Documents/ros/rk_node_tutorial/src/gnss_driver/nodelets.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnss_driver/launch" TYPE DIRECTORY FILES "/home/nthom/Documents/ros/rk_node_tutorial/src/gnss_driver/launch/")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnss_driver/conf" TYPE DIRECTORY FILES "/home/nthom/Documents/ros/rk_node_tutorial/src/gnss_driver/conf/")
endif()


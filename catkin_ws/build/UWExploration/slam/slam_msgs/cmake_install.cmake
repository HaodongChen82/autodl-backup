# Install script for directory: /root/catkin_ws/src/UWExploration/slam/slam_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/root/catkin_ws/install")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/slam_msgs/msg" TYPE FILE FILES
    "/root/catkin_ws/src/UWExploration/slam/slam_msgs/msg/MbRequest.msg"
    "/root/catkin_ws/src/UWExploration/slam/slam_msgs/msg/MbResult.msg"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/slam_msgs/srv" TYPE FILE FILES "/root/catkin_ws/src/UWExploration/slam/slam_msgs/srv/Resample.srv")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/slam_msgs/action" TYPE FILE FILES
    "/root/catkin_ws/src/UWExploration/slam/slam_msgs/action/PlotPosterior.action"
    "/root/catkin_ws/src/UWExploration/slam/slam_msgs/action/SamplePosterior.action"
    "/root/catkin_ws/src/UWExploration/slam/slam_msgs/action/ManipulatePosterior.action"
    "/root/catkin_ws/src/UWExploration/slam/slam_msgs/action/MinibatchTraining.action"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/slam_msgs/msg" TYPE FILE FILES
    "/root/catkin_ws/devel/share/slam_msgs/msg/PlotPosteriorAction.msg"
    "/root/catkin_ws/devel/share/slam_msgs/msg/PlotPosteriorActionGoal.msg"
    "/root/catkin_ws/devel/share/slam_msgs/msg/PlotPosteriorActionResult.msg"
    "/root/catkin_ws/devel/share/slam_msgs/msg/PlotPosteriorActionFeedback.msg"
    "/root/catkin_ws/devel/share/slam_msgs/msg/PlotPosteriorGoal.msg"
    "/root/catkin_ws/devel/share/slam_msgs/msg/PlotPosteriorResult.msg"
    "/root/catkin_ws/devel/share/slam_msgs/msg/PlotPosteriorFeedback.msg"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/slam_msgs/msg" TYPE FILE FILES
    "/root/catkin_ws/devel/share/slam_msgs/msg/SamplePosteriorAction.msg"
    "/root/catkin_ws/devel/share/slam_msgs/msg/SamplePosteriorActionGoal.msg"
    "/root/catkin_ws/devel/share/slam_msgs/msg/SamplePosteriorActionResult.msg"
    "/root/catkin_ws/devel/share/slam_msgs/msg/SamplePosteriorActionFeedback.msg"
    "/root/catkin_ws/devel/share/slam_msgs/msg/SamplePosteriorGoal.msg"
    "/root/catkin_ws/devel/share/slam_msgs/msg/SamplePosteriorResult.msg"
    "/root/catkin_ws/devel/share/slam_msgs/msg/SamplePosteriorFeedback.msg"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/slam_msgs/msg" TYPE FILE FILES
    "/root/catkin_ws/devel/share/slam_msgs/msg/ManipulatePosteriorAction.msg"
    "/root/catkin_ws/devel/share/slam_msgs/msg/ManipulatePosteriorActionGoal.msg"
    "/root/catkin_ws/devel/share/slam_msgs/msg/ManipulatePosteriorActionResult.msg"
    "/root/catkin_ws/devel/share/slam_msgs/msg/ManipulatePosteriorActionFeedback.msg"
    "/root/catkin_ws/devel/share/slam_msgs/msg/ManipulatePosteriorGoal.msg"
    "/root/catkin_ws/devel/share/slam_msgs/msg/ManipulatePosteriorResult.msg"
    "/root/catkin_ws/devel/share/slam_msgs/msg/ManipulatePosteriorFeedback.msg"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/slam_msgs/msg" TYPE FILE FILES
    "/root/catkin_ws/devel/share/slam_msgs/msg/MinibatchTrainingAction.msg"
    "/root/catkin_ws/devel/share/slam_msgs/msg/MinibatchTrainingActionGoal.msg"
    "/root/catkin_ws/devel/share/slam_msgs/msg/MinibatchTrainingActionResult.msg"
    "/root/catkin_ws/devel/share/slam_msgs/msg/MinibatchTrainingActionFeedback.msg"
    "/root/catkin_ws/devel/share/slam_msgs/msg/MinibatchTrainingGoal.msg"
    "/root/catkin_ws/devel/share/slam_msgs/msg/MinibatchTrainingResult.msg"
    "/root/catkin_ws/devel/share/slam_msgs/msg/MinibatchTrainingFeedback.msg"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/slam_msgs/cmake" TYPE FILE FILES "/root/catkin_ws/build/UWExploration/slam/slam_msgs/catkin_generated/installspace/slam_msgs-msg-paths.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/root/catkin_ws/devel/include/slam_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/root/catkin_ws/devel/share/roseus/ros/slam_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/root/catkin_ws/devel/share/common-lisp/ros/slam_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/root/catkin_ws/devel/share/gennodejs/ros/slam_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/root/catkin_ws/devel/lib/python3/dist-packages/slam_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/root/catkin_ws/devel/lib/python3/dist-packages/slam_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/root/catkin_ws/build/UWExploration/slam/slam_msgs/catkin_generated/installspace/slam_msgs.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/slam_msgs/cmake" TYPE FILE FILES "/root/catkin_ws/build/UWExploration/slam/slam_msgs/catkin_generated/installspace/slam_msgs-msg-extras.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/slam_msgs/cmake" TYPE FILE FILES
    "/root/catkin_ws/build/UWExploration/slam/slam_msgs/catkin_generated/installspace/slam_msgsConfig.cmake"
    "/root/catkin_ws/build/UWExploration/slam/slam_msgs/catkin_generated/installspace/slam_msgsConfig-version.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/slam_msgs" TYPE FILE FILES "/root/catkin_ws/src/UWExploration/slam/slam_msgs/package.xml")
endif()


FROM pch18/ros:base
MAINTAINER pch18.cn

RUN /bin/sh -c "apt-get install -y ros-${ROS_DISTRO}-desktop-full"

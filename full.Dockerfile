FROM pch18/ros:base
MAINTAINER pch18.cn

RUN apt-get install -y ros-${ROS_DISTRO}-desktop-full \
    && rm -rf /var/lib/apt/lists/*

FROM ros:latest
MAINTAINER pch18.cn

COPY ros_entrypoint.sh /ros_entrypoint.sh

RUN apt-get update \
    && apt-get install -y ros-${ROS_DISTRO}-desktop-full \
    && rm -rf /var/lib/apt/lists/* \
    && echo 'source "/opt/ros/$ROS_DISTRO/setup.bash"' >> ~/.bashrc \
    && echo 'source /setup.bash' >> ~/.bashrc \
    && touch /setup.bash
    
WORKDIR /root

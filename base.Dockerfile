FROM ros:latest
MAINTAINER pch18.cn

COPY ros_entrypoint.sh /ros_entrypoint.sh
ENV SETUP_BASH "#set your setup bash"

RUN apt update \
    && chmod +x /ros_entrypoint.sh \
    && echo 'source "/opt/ros/$ROS_DISTRO/setup.bash"' >> ~/.bashrc \
    && echo 'source /setup.bash' >> ~/.bashrc \
    && touch /setup.bash

VOLUME /opt/ros
WORKDIR /root

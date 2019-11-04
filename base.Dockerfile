FROM ros:latest
MAINTAINER pch18.cn

COPY ros_entrypoint.sh /ros_entrypoint.sh
ENV SETUP "/setup.bash"

RUN chmod +x /ros_entrypoint.sh \
    && echo 'source "/opt/ros/$ROS_DISTRO/setup.bash"' >> ~/.bashrc \
    && echo 'source ${SETUP}' >> ~/.bashrc \
    && touch /setup.bash

VOLUME /opt/ros
WORKDIR /root

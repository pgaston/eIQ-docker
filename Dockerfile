
#From nvidia/cuda:11.8.0-base-ubuntu20.04
# Needed one old enough to use cuda 12.2 and ubuntu 20
# latest too new
# 2.3.4 too old - ubuntu 18
# found this by trial and error...
From tensorflow/tensorflow:2.8.2-gpu

# Install needed utilities for eIQ to run
RUN apt-get update && apt-get install -y \
   apt-utils \
   whiptail \
   sudo \
   git \
   libgl1-mesa-glx \
   libcanberra-gtk-module libcanberra-gtk3-module \
   libxtst6 libnss3 libatk-bridge2.0-0 libgtk-3-0 libxss1 libasound2 libgbm1

#? Is tensorrt really needed?
#    tensorrt \    # install later - causing problems
# apt-utils \

# python3-pip \
# python3-dev \
# sudo \
# git \
# lsb-release \
# unzip \
# whiptail \
# tensorrt \
#


# bunch may not be needed with the tensorflow image
# last 5 are for running the eIQ install script - not really needed here as eIQ checks and installs if needed - but does stop and ask
# previous line to that - for canberra-gtk-module


# first try and running as non sudo user
#RUN useradd -m docker && echo "docker:docker" | chpasswd && adduser docker sudo

# should be in the tensorflow image
#RUN pip3 install tensorflow tensorrt

# RUN apt-get update && apt-get install -y \
#     tensorrt

# to run inside docker as non root (and the eIQ install script requires a non-root user)
RUN adduser --disabled-password --gecos '' docker
RUN adduser docker sudo
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER docker
CMD /bin/bash


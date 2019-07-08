FROM debian:testing as build
MAINTAINER EvillHood

# install packages
#############
RUN apt-get update && \
    apt-get install -y \          
      cmake \
      git \
      build-essential \
      qt5-default \
      qtbase5-dev \
      gettext \
      qttools5-dev-tools\
      libqt5svg5-dev \
      clang-tidy \
      libboost-locale-dev \
      libboost-regex-dev \
      libboost-filesystem-dev \
      libboost-log-dev \
      libboost-thread-dev \
      clazy \
      libboost-program-options-dev \
      libqwt-qt5-dev \
      gnuradio-dev \
      libuhd-dev
      
# Install vnc, xvfb in order to create a 'fake' display 
RUN     apt-get install -y x11vnc xvfb twm 
# map /source to host source data path (used to )
       
VOLUME /source

# map /data to host defined data path (used to store data from app)
VOLUME /data

# run 
CMD ["/bin/bash"]

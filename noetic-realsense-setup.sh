#!/bin/bash

cd
git clone https://github.com/IntelRealSense/librealsense.git
cd librealsense/
sudo apt install -y git libssl-dev libusb-1.0-0-dev pkg-config libgtk-3-dev
sudo apt install -y libglfw3-dev libgl1-mesa-dev libglu1-mesa-dev
sudo apt install -y cmake
./scripts/setup_udev_rules.sh
./scripts/patch-realsense-ubuntu-lts.sh
mkdir build && cd build
cmake ../
sudo make clean && make && sudo make install
sudo ldconfig
source ~/.bashrc

cd
sudo apt update
sudo apt upgrade
sudo ln -s /usr/include/opencv4/ /usr/include/opencv
sudo apt install -y ros-noetic-ddynamic-reconfigure
cd catkin_ws/src
git clone https://github.com/IntelRealSense/realsense-ros.git
cd ..
catkin build
source ~/.bashrc

roslaunch realsense2_camera demo_pointcloud.launch
#!/bin/bash

# [change config]
TELLO_NS="tello_601"

IS_DRIVER="true"
IS_CAMERA_VIZ="true"
IMG_TYPE="image_raw"
IFNAME="wlp0s20f3"


# [process]
roslaunch tello_driver single_drone_launch.launch \
    is_driver:=$IS_DRIVER \
    is_camera_viz:=$IS_CAMERA_VIZ \
    img_type:=$IMG_TYPE \
    ifname:=$IFNAME \
    tello_ns:=$TELLO_NS
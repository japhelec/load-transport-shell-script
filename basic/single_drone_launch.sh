#!/bin/bash

# [change config]
TELLO_NS="tello_601"
# TELLO_NS="tello_D"

IS_DRIVER="true"
IS_CAMERA_VIZ="true"
IMG_TYPE="image_raw"
IS_PERCEPTION="true"
IFNAME="wlp0s20f3"
# IFNAME="wlx1cbfce8dc7fe"

# [process]
roslaunch tello_driver single_drone_launch.launch \
    is_driver:=$IS_DRIVER \
    is_camera_viz:=$IS_CAMERA_VIZ \
    is_perception:=$IS_PERCEPTION \
    img_type:=$IMG_TYPE \
    ifname:=$IFNAME \
    tello_ns:=$TELLO_NS
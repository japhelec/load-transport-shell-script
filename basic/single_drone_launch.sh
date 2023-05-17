#!/bin/bash

# [change config]
# TELLO_NS="tello_E"
# TELLO_NS="tello_A"
TELLO_NS="tello_601"
# TELLO_NS="tello_C"
# TELLO_NS="tello_D"

IFNAME="wlp0s20f3"
# IFNAME="wlx5c925ed5619a"
# IFNAME="wlxc4e90a08629a"

IS_DRIVER="true"
IS_CAMERA_VIZ="false"
IMG_TYPE="0"
IS_BEARING="true"


# [process]
roslaunch tello_driver single_drone_launch.launch \
    is_driver:=$IS_DRIVER \
    is_camera_viz:=$IS_CAMERA_VIZ \
    is_bearing:=$IS_BEARING \
    img_type:=$IMG_TYPE \
    ifname:=$IFNAME \
    tello_ns:=$TELLO_NS
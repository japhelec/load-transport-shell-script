#!/bin/bash
# =============================================================
# [change config]
# =============================================================
TELLO_1_NS="tello_601"
TELLO_2_NS="tello_C"

IFNAME1="wlp0s20f3"
IFNAME2="wlx1cbfce8dc7fe"

IS_DRIVER="true"
IS_CAMERA_VIZ="true"
IMG_TYPE="image_raw"



roslaunch tello_driver two_drone_launch.launch \
    is_driver:=$IS_DRIVER \
    is_camera_viz:=$IS_CAMERA_VIZ \
    tello_ns1:=$TELLO_1_NS \
    tello_ns2:=$TELLO_2_NS \
    img_type:=$IMG_TYPE \
    ifname1:=$IFNAME1 \
    ifname2:=$IFNAME2
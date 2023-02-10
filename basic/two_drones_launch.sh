#!/bin/bash
# =============================================================
# [change config]
# =============================================================
TELLO1_NS="tello_A"
TELLO2_NS="tello_D"

IFNAME1="wlp0s20f3"
IFNAME2="wlxc4e90a08629a"

IS_DRIVER="true"
IS_CAMERA_VIZ="true"
IMG_TYPE="image_raw"
IS_PERCEPTION="true"



roslaunch tello_driver two_drone_launch.launch \
    is_driver:=$IS_DRIVER \
    is_camera_viz:=$IS_CAMERA_VIZ \
    is_perception:=$IS_PERCEPTION \
    img_type:=$IMG_TYPE \
    tello1_ns:=$TELLO1_NS \
    tello2_ns:=$TELLO2_NS \
    ifname1:=$IFNAME1 \
    ifname2:=$IFNAME2
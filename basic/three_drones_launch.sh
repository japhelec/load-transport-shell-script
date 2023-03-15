#!/bin/bash
# =============================================================
# [change config]
# =============================================================
TELLO1_NS="tello_A"
TELLO2_NS="tello_C"
TELLO3_NS="tello_601"

IFNAME1="wlp0s20f3"
IFNAME2="wlx5c925ed5619a"
IFNAME3="wlxc4e90a08629a"

IS_DRIVER="false"
IS_CAMERA_VIZ="true"
IMG_TYPE="0"
IS_PERCEPTION="false"



roslaunch tello_driver three_drone_launch.launch \
    is_driver:=$IS_DRIVER \
    is_camera_viz:=$IS_CAMERA_VIZ \
    is_perception:=$IS_PERCEPTION \
    img_type:=$IMG_TYPE \
    tello1_ns:=$TELLO1_NS \
    tello2_ns:=$TELLO2_NS \
    tello3_ns:=$TELLO3_NS \
    ifname1:=$IFNAME1 \
    ifname2:=$IFNAME2 \
    ifname3:=$IFNAME3
#!/bin/bash
# =============================================================
# [change config]
# =============================================================
IS_DRIVER="true"
IS_CAMERA_VIZ="true"

TELLO_1_NS="tello_601"
TELLO_2_NS="tello_C"

roslaunch tello_driver two_drone_launch.launch \
    is_driver:=$IS_DRIVER \
    is_camera_viz:=$IS_CAMERA_VIZ \
    tello_ns1:=$TELLO_1_NS \
    tello_ns2:=$TELLO_2_NS 

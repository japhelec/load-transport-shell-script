#!/bin/bash
# =============================================================
# [change config]
# =============================================================
IS_DRIVER="true"
IS_CAMERA_VIZ="true"

roslaunch tello_driver single_drone_launch.launch \
    is_driver:=$IS_DRIVER \
    is_camera_viz:=$IS_CAMERA_VIZ
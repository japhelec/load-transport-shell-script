#!/bin/bash
# =============================================================
# [change config]
# =============================================================
IS_CAMERA_VIZ="true"
IS_RECORD="false"
IS_ACTION="false"
IS_PERCEPTION="true"
DIR_NS="/home/kuei/Documents/records/visual_inertial_odometry"
BAG_NAME="downward_camera_flight"

if [$IS_RECORD = "true"]
then
    mkdir -p $DIR_NS
fi

roslaunch tello_driver single_drone.launch \
    dir_ns:=$DIR_NS \
    bag_name:=$BAG_NAME \
    is_record:=$IS_RECORD \
    is_camera_viz:=$IS_CAMERA_VIZ \
    is_action:=$IS_ACTION \
    is_perception:=$IS_PERCEPTION
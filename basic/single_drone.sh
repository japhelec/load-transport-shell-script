#!/bin/bash
# =============================================================
# [change config]
# =============================================================
AP_ID="3"
IS_DRIVER="true"
IS_CAMERA_VIZ="true"
IS_RECORD="true"
IS_ACTION="true"
IS_PERCEPTION="true"
DIR_NS="/home/kuei/Documents/records/single_lift_middle"
BAG_NAME="Desire-30deg_Kp-2-2-3_aluminum-fixing_apid-3_long-rope_2nd"

if [ $IS_RECORD == "true" ]
then
    mkdir -p $DIR_NS
fi

roslaunch tello_driver single_drone.launch \
    dir_ns:=$DIR_NS \
    bag_name:=$BAG_NAME \
    is_driver:=$IS_DRIVER \
    is_record:=$IS_RECORD \
    is_camera_viz:=$IS_CAMERA_VIZ \
    is_action:=$IS_ACTION \
    is_perception:=$IS_PERCEPTION \
    ap_id:=$AP_ID
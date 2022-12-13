#!/bin/bash
# =============================================================
# [change config]
# =============================================================
IS_DRIVER="true"
IS_CAMERA_VIZ="true"
IS_RECORD="false"
IS_ACTION="true"
IS_PERCEPTION="true"
DIR_NS="/home/kuei/Documents/records/two_lift_corner"
BAG_NAME="apid-2-4_desire-30deg_Kp-2-2-3_2nd"

TELLO_1_NS="tello_601"
TELLO_2_NS="tello_C"
TELLO1_AP_ID="2"
TELLO2_AP_ID="4"

if [ $IS_RECORD == "true" ]
then
    mkdir -p $DIR_NS
fi

roslaunch tello_driver two_drone.launch \
    dir_ns:=$DIR_NS \
    bag_name:=$BAG_NAME \
    is_driver:=$IS_DRIVER \
    is_record:=$IS_RECORD \
    is_camera_viz:=$IS_CAMERA_VIZ \
    is_action:=$IS_ACTION \
    is_perception:=$IS_PERCEPTION \
    tello_ns1:=$TELLO_1_NS \
    tello_ns2:=$TELLO_2_NS \
    tello1_ap_id:=$TELLO1_AP_ID \
    tello2_ap_id:=$TELLO2_AP_ID

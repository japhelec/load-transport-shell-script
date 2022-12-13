#!/bin/bash
# =============================================================
# [change config]
# =============================================================
IS_RECORD="true"
IS_ACTION="false"
IS_PERCEPTION="false"
DIR_NS="/home/kuei/Documents/records/two_lift_corner"
BAG_NAME="test_video_input_MD5_Cthen601"

TELLO_1_NS="tello_601"
TELLO_2_NS="tello_C"
TELLO1_AP_ID="2"
TELLO2_AP_ID="4"

if [ $IS_RECORD == "true" ]
then
    mkdir -p $DIR_NS
fi

roslaunch tello_driver two_drone_action.launch \
    dir_ns:=$DIR_NS \
    bag_name:=$BAG_NAME \
    is_record:=$IS_RECORD \
    is_action:=$IS_ACTION \
    is_perception:=$IS_PERCEPTION \
    tello_ns1:=$TELLO_1_NS \
    tello_ns2:=$TELLO_2_NS \
    tello1_ap_id:=$TELLO1_AP_ID \
    tello2_ap_id:=$TELLO2_AP_ID

#!/bin/bash
# =============================================================
# [change config]
# =============================================================
AP_ID="3"
IS_RECORD="false"
IS_ACTION="true"
IS_PERCEPTION="true"
DIR_NS="/home/kuei/Documents/records/single_lift_middle"
BAG_NAME="flyup_control_apid-3_Kp-4-4-1_1st"

if [ $IS_RECORD == "true" ]
then
    mkdir -p $DIR_NS
fi

roslaunch tello_driver single_drone_action.launch \
    dir_ns:=$DIR_NS \
    bag_name:=$BAG_NAME \
    is_record:=$IS_RECORD \
    is_action:=$IS_ACTION \
    is_perception:=$IS_PERCEPTION \
    ap_id:=$AP_ID
#!/bin/bash
# =============================================================
# [change config]
# =============================================================
AP_ID="4"
IS_RECORD="true"
IS_ACTION="true"
IS_PERCEPTION="true"
DIR_NS="/home/kuei/Documents/records/20221219"
BAG_NAME="Test16_Kp-25-25_Ki-001-001_Kd-0002-0002_woRope"

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
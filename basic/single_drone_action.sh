#!/bin/bash

# [change config]
TELLO_NS="tello_601"
# TELLO_NS="tello_D"
AP_ID="0"

IS_RECORD="false"
IS_ACTION="true"
IS_PERCEPTION="true"

DIR_NS="/home/kuei/Documents/records/20230206/payload_marker_calib"
# DIR_NS="/home/kuei/Documents/records/20230103/Tello_D"
BAG_NAME="Test2"




# [process]
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
    ap_id:=$AP_ID \
    tello_ns:=$TELLO_NS
#!/bin/bash

IS_RECORD="true"

me=`pwd "$0"`
DIR_NS="$me/../records/20230303/single_A"
BAG_NAME="Test6"

TELLO_NS="tello_A"
TELLO_AP_ID="0"

# [process]
if [ $IS_RECORD == "true" ]
then
    mkdir -p $DIR_NS
fi

roslaunch tello_driver single_drone_control.launch \
    dir_ns:=$DIR_NS \
    bag_name:=$BAG_NAME \
    is_record:=$IS_RECORD \
    tello_ns:=$TELLO_NS \
    tello_ap_id:=$TELLO_AP_ID
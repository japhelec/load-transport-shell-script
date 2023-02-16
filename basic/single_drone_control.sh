#!/bin/bash

IS_RECORD="true"

me=`pwd "$0"`
DIR_NS="$me/../records/20230216/single_D/filtered"
BAG_NAME="Test2"

TELLO_NS="tello_D"
TELLO_AP_ID="6"

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
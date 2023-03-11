#!/bin/bash

IS_RECORD="false"

me=`pwd "$0"`
DIR_NS="$me/../records/20230209/payload_centric/two_40cm/3_wp"
BAG_NAME="Test7"

TELLO1_NS="tello_A"
AP1_ID="0"
TELLO2_NS="tello_D"
AP2_ID="6"

# [process]
if [ $IS_RECORD == "true" ]
then
    mkdir -p $DIR_NS
fi

roslaunch tello_driver two_drone_control.launch \
    dir_ns:=$DIR_NS \
    bag_name:=$BAG_NAME \
    is_record:=$IS_RECORD \
    tello1_ns:=$TELLO1_NS \
    ap1_id:=$AP1_ID \
    tello2_ns:=$TELLO2_NS \
    ap2_id:=$AP2_ID
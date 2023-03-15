#!/bin/bash

IS_RECORD="false"

me=`pwd "$0"`
DIR_NS="$me/../records/202303/0312/refactor_test"
BAG_NAME="Test5_black_cable_75cm_rotate_aside"

TELLO_NS="tello_A"

# [process]
if [ $IS_RECORD == "true" ]
then
    mkdir -p $DIR_NS
fi

roslaunch load_transport single_drone_control.launch \
    dir_ns:=$DIR_NS \
    bag_name:=$BAG_NAME \
    is_record:=$IS_RECORD \
    tello_ns:=$TELLO_NS
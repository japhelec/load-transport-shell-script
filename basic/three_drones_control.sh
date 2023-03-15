#!/bin/bash

IS_RECORD="false"

me=`pwd "$0"`
DIR_NS="$me/../records/202303/0315/three_drones/"
BAG_NAME="Test6_board"

TELLO1_NS="tello_A"
TELLO2_NS="tello_C"
TELLO3_NS="tello_601"

# [process]
if [ $IS_RECORD == "true" ]
then
    mkdir -p $DIR_NS
fi

roslaunch load_transport three_drone_control.launch \
    dir_ns:=$DIR_NS \
    bag_name:=$BAG_NAME \
    is_record:=$IS_RECORD \
    tello1_ns:=$TELLO1_NS \
    tello2_ns:=$TELLO2_NS \
    tello3_ns:=$TELLO3_NS
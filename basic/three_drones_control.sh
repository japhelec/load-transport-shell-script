#!/bin/bash

IS_RECORD="true"

me=`pwd "$0"`
DIR_NS="$me/../records/202303/0314/three_drones/"
BAG_NAME="Test1"

TELLO1_NS="tello_A"
TELLO2_NS="tello_C"
TELLO3_NS="tello_D"

# [process]
if [ $IS_RECORD == "true" ]
then
    mkdir -p $DIR_NS
fi

roslaunch tello_driver three_drone_control.launch \
    dir_ns:=$DIR_NS \
    bag_name:=$BAG_NAME \
    is_record:=$IS_RECORD \
    tello1_ns:=$TELLO1_NS \
    tello2_ns:=$TELLO2_NS \
    tello3_ns:=$TELLO3_NS
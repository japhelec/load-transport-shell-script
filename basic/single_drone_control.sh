#!/bin/bash

IS_RECORD="true"

me=`pwd "$0"`
DIR_NS="$me/../records/20230208/payload_centric/single"
BAG_NAME="Test1_one_wp"


# [process]
if [ $IS_RECORD == "true" ]
then
    mkdir -p $DIR_NS
fi

roslaunch tello_driver single_drone_control.launch \
    dir_ns:=$DIR_NS \
    bag_name:=$BAG_NAME \
    is_record:=$IS_RECORD
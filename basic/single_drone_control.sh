#!/bin/bash

IS_RECORD="false"

me=`pwd "$0"`
DIR_NS="$me/../records/202305/0503/pitch_control"
BAG_NAME="Test12"

TELLO_NS="tello_601"

LIFT_THRUST=0.8
LIFT_DURATION=4

PITCH_KP=4.0
PITCH_KI=0
PITCH_KD=0.04

# YAW_KP=2.5
# YAW_KI=0
# YAW_KD=0
YAW_KP=0
YAW_KI=0
YAW_KD=0


# [process]
if [ $IS_RECORD == "true" ]
then
    mkdir -p $DIR_NS
fi

roslaunch load_transport single_drone_control.launch \
    dir_ns:=$DIR_NS \
    bag_name:=$BAG_NAME \
    is_record:=$IS_RECORD \
    tello_ns:=$TELLO_NS \
    lift_thrust:=$LIFT_THRUST \
    lift_duration:=$LIFT_DURATION \
    yaw_kp:=$YAW_KP \
    yaw_ki:=$YAW_KI \
    yaw_kd:=$YAW_KD \
    pitch_kp:=$PITCH_KP \
    pitch_ki:=$PITCH_KI \
    pitch_kd:=$PITCH_KD
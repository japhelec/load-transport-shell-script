#!/bin/bash

IS_RECORD="true"

me=`pwd "$0"`
DIR_NS="$me/../records/202305/0517/distance_leader/K0808"
# DIR_NS="$me/../records/202305/0515/no_payload/K0808"
BAG_NAME="Test1"

TELLO1_NS="tello_A"
TELLO2_NS="tello_C"
TELLO3_NS="tello_D"

LIFT_THRUST_01=0.8
LIFT_THRUST_02=0.8
LIFT_THRUST_03=0.8
# LIFT_DURATION=3
# ========================================================
LIFT_DURATION=4.5

PITCH_KP=2.5
PITCH_KI=0
PITCH_KD=0.05

YAW_KP=2.5
YAW_KI=0
YAW_KD=0
YAW_TOL=5

FORM_K=0.8
DIST_K=0.8
DESIRED_DIST=0.7

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
    tello3_ns:=$TELLO3_NS \
    lift_thrust_01:=$LIFT_THRUST_01 \
    lift_thrust_02:=$LIFT_THRUST_02 \
    lift_thrust_03:=$LIFT_THRUST_03 \
    lift_duration:=$LIFT_DURATION \
    pitch_kp:=$PITCH_KP \
    pitch_ki:=$PITCH_KI \
    pitch_kd:=$PITCH_KD \
    yaw_kp:=$YAW_KP \
    yaw_ki:=$YAW_KI \
    yaw_kd:=$YAW_KD \
    yaw_tol:=$YAW_TOL \
    form_k:=$FORM_K \
    dist_k:=$DIST_K \
    desired_dist:=$DESIRED_DIST
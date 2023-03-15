#!/bin/bash

IS_RECORD="false"

me=`pwd "$0"`
DIR_NS="$me/../records/202303/0315/three_drones/"
BAG_NAME="Test6_board"

TELLO1_NS="tello_A"
TELLO2_NS="tello_C"
TELLO3_NS="tello_601"

FLYUP_KPX=1.2
FLYUP_KPY=1.2
FLYUP_KPZ=1.2
FLYUP_KIX=0.03
FLYUP_KIY=0.03
FLYUP_KIZ=0.03
FLYUP_KDX=0.001
FLYUP_KDY=0.001
FLYUP_KDZ=0.001
FLYUP_TOL=0.05
LIFT_THRUST=1.5
LIFT_DURATION=3

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
    flyup_kpx:=$FLYUP_KPX \
    flyup_kpy:=$FLYUP_KPY \
    flyup_kpz:=$FLYUP_KPZ \
    flyup_kdx:=$FLYUP_KDX \
    flyup_kdy:=$FLYUP_KDY \
    flyup_kdz:=$FLYUP_KDZ \
    flyup_kix:=$FLYUP_KIX \
    flyup_kiy:=$FLYUP_KIY \
    flyup_kiz:=$FLYUP_KIZ \
    flyup_tol:=$FLYUP_TOL \
    lift_thrust:=$LIFT_THRUST \
    lift_duration:=$LIFT_DURATION